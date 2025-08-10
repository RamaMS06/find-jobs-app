// ignore_for_file: cast_nullable_to_non_nullable, prefer_asserts_with_message

import 'dart:async';
import 'dart:ui';
import 'dart:math' as math;

import 'package:find_job_app/core/common/components/coachmark/core/target/target_content.dart';
import 'package:find_job_app/core/common/components/coachmark/core/target/target_position.dart';
import 'package:find_job_app/core/common/components/coachmark/core/util.dart';
import 'package:find_job_app/core/common/components/coachmark/core/widgets/animated_focus_light.dart';
import 'package:find_job_app/core/common/components/coachmark/models/tooltip.target.focus.dart';
import 'package:flutter/material.dart';

class RCoachMarkWidget extends StatefulWidget {
  const RCoachMarkWidget({
    required this.targets,
    super.key,
    this.finish,
    this.paddingFocus = 10,
    this.clickTarget,
    this.onClickTargetWithTapPosition,
    this.clickOverlay,
    this.alignSkip = Alignment.bottomRight,
    this.textSkip = 'SKIP',
    this.onClickSkip,
    this.colorShadow = Colors.black,
    this.opacityShadow = 0.8,
    this.textStyleSkip = const TextStyle(color: Colors.white),
    this.hideSkip = false,
    this.useSafeArea = true,
    this.focusAnimationDuration,
    this.unFocusAnimationDuration,
    this.pulseAnimationDuration,
    this.pulseVariation,
    this.pulseEnable = true,
    this.skipWidget,
    this.rootOverlay = false,
    this.showSkipInLastTarget = false,
    this.imageFilter,
    this.backgroundSemanticLabel,
    this.initialFocus = 0,
  }) : assert(targets.length > 0);

  final List<RTargetFocus> targets;
  final FutureOr<void> Function(RTargetFocus)? clickTarget;
  final FutureOr<void> Function(RTargetFocus, TapDownDetails)?
      onClickTargetWithTapPosition;
  final FutureOr<void> Function(RTargetFocus)? clickOverlay;
  final void Function()? finish;
  final Color colorShadow;
  final double opacityShadow;
  final double paddingFocus;
  final void Function()? onClickSkip;
  final AlignmentGeometry alignSkip;
  final String textSkip;
  final TextStyle textStyleSkip;
  final bool hideSkip;
  final bool useSafeArea;
  final Duration? focusAnimationDuration;
  final Duration? unFocusAnimationDuration;
  final Duration? pulseAnimationDuration;
  final Tween<double>? pulseVariation;
  final bool pulseEnable;
  final Widget? skipWidget;
  final bool rootOverlay;
  final bool showSkipInLastTarget;
  final ImageFilter? imageFilter;
  final int initialFocus;
  final String? backgroundSemanticLabel;

  @override
  RCoachMarkWidgetState createState() =>
      RCoachMarkWidgetState();
}

class RCoachMarkWidgetState extends State<RCoachMarkWidget>
    implements RTooltipNavigationController {
  final GlobalKey<RAnimatedFocusLightState> _focusLightKey = GlobalKey();
  bool showContent = false;
  RTargetFocus? currentTarget;

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Stack(
        children: <Widget>[
          RAnimatedFocusLight(
            key: _focusLightKey,
            initialFocus: widget.initialFocus,
            targets: widget.targets,
            finish: widget.finish,
            paddingFocus: widget.paddingFocus,
            colorShadow: widget.colorShadow,
            opacityShadow: widget.opacityShadow,
            focusAnimationDuration: widget.focusAnimationDuration,
            unFocusAnimationDuration: widget.unFocusAnimationDuration,
            pulseAnimationDuration: widget.pulseAnimationDuration,
            pulseVariation: widget.pulseVariation,
            pulseEnable: widget.pulseEnable,
            rootOverlay: widget.rootOverlay,
            imageFilter: widget.imageFilter,
            backgroundSemanticLabel: widget.backgroundSemanticLabel,
            clickTarget: (target) {
              return widget.clickTarget?.call(target);
            },
            clickTargetWithTapPosition: (target, tapDetails) {
              return widget.onClickTargetWithTapPosition
                  ?.call(target, tapDetails);
            },
            clickOverlay: (target) {
              return widget.clickOverlay?.call(target);
            },
            focus: (target) {
              setState(() {
                currentTarget = target;
                showContent = true;
              });
            },
            removeFocus: () {
              setState(() {
                showContent = false;
              });
            },
          ),
          AnimatedOpacity(
            opacity: showContent ? 1 : 0,
            duration: const Duration(milliseconds: 300),
            child: _buildContents(),
          ),
          _buildSkip(),
        ],
      ),
    );
  }

  Widget _buildContents() {
    if (currentTarget == null) {
      return const SizedBox.shrink();
    }

    var children = <Widget>[];

    TargetPosition? target;
    try {
      target = getTargetCurrent(
        currentTarget!,
        rootOverlay: widget.rootOverlay,
      );
    } on NotFoundTargetException catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
    }

    if (target == null) {
      return const SizedBox.shrink();
    }

    final box = (currentTarget?.tooltipKey ?? currentTarget?.keyTarget.first)
        ?.currentContext
        ?.findRenderObject() as RenderBox;
    final size = box.size;
    final position = box.localToGlobal(Offset.zero);

    final positioned = Offset(
      position.dx + size.width / 2,
      position.dy + size.height / 2,
    );

    double haloWidth;
    double haloHeight;

    if (currentTarget!.shape == ShapeLightFocus.Circle) {
      haloWidth = size.width > size.height ? size.width : size.height;
      haloHeight = haloWidth;
    } else {
      haloWidth = size.width;
      haloHeight = size.height;
    }

    haloWidth = haloWidth * 0.6 + widget.paddingFocus;
    haloHeight = haloHeight * 0.6 + widget.paddingFocus;

    double? width = 0;
    double? top;
    double? bottom;
    double? left;
    double? right;

    final ancestorBox = context.findRenderObject() as RenderBox;

    final targetContext = currentTarget?.keyTarget.first.currentContext;

    final targetBox = targetContext?.findRenderObject() as RenderBox;
    targetBox.localToGlobal(Offset.zero, ancestor: ancestorBox);
    final targetSize = targetBox.size;

    children = currentTarget!.contents!.map<Widget>((data) {
      switch (data.align) {
        case ContentAlign.bottom:
          {
            width = ancestorBox.size.width;
            left = 0;
            // Use spacing as 10% of target height (or anything logical)
            final spacing = math.max(4, targetSize.height * 0.1);

            top = positioned.dy + haloHeight - spacing;
            bottom = null;
          }
          break;
        case ContentAlign.top:
          {
            width = ancestorBox.size.width;
            left = 0;
            // Use spacing as 10% of target height (or anything logical)
            final spacing = math.max(4, targetSize.height * 0.1);

            top = null;
            bottom = haloHeight +
                (ancestorBox.size.height - 8 - positioned.dy) -
                spacing;
          }
          break;
        case ContentAlign.left:
          {
            width = positioned.dx - haloWidth;
            left = 0;
            top = positioned.dy - target!.size.height / 2 - haloHeight;
            bottom = null;
          }
          break;
        case ContentAlign.right:
          {
            left = positioned.dx + haloWidth;
            top = positioned.dy - target!.size.height / 2 - haloHeight;
            bottom = null;
            width = ancestorBox.size.width - left!;
          }
          break;
        case ContentAlign.custom:
          {
            left = data.customPosition!.left;
            right = data.customPosition!.right;
            top = data.customPosition!.top;
            bottom = data.customPosition!.bottom;
            width = ancestorBox.size.width;
          }
          break;
      }

      return Positioned(
        top: top,
        bottom: bottom,
        left: left,
        right: right,
        child: SizedBox(
          width: width,
          child: Padding(
            padding: data.padding,
            child: data.builder?.call(context, this) ??
                (data.child ?? const SizedBox.shrink()),
          ),
        ),
      );
    }).toList();

    return Stack(
      children: children,
    );
  }

  Widget _buildSkip() {
    var isLastTarget = false;

    if (currentTarget != null) {
      isLastTarget =
          widget.targets.indexOf(currentTarget!) == widget.targets.length - 1;
    }

    if (widget.hideSkip || (isLastTarget && !widget.showSkipInLastTarget)) {
      return const SizedBox.shrink();
    }

    final Widget animatedWidget = AnimatedOpacity(
      opacity: showContent ? 1 : 0,
      duration: const Duration(milliseconds: 300),
      child: InkWell(
        onTap: skip,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: IgnorePointer(
            child: widget.skipWidget ??
                Text(
                  widget.textSkip,
                  style: widget.textStyleSkip,
                ),
          ),
        ),
      ),
    );

    return Align(
      alignment: currentTarget?.alignSkip ?? widget.alignSkip,
      child: (widget.useSafeArea)
          ? SafeArea(child: animatedWidget)
          : animatedWidget,
    );
  }

  @override
  void skip() => widget.onClickSkip?.call();

  @override
  void next() => _focusLightKey.currentState?.next();

  @override
  void previous() => _focusLightKey.currentState?.previous();

  void goTo(int index) => _focusLightKey.currentState?.goTo(index);
}
