// ignore_for_file: no_leading_underscores_for_local_identifiers,
// ignore_for_file: cast_nullable_to_non_nullable, no_default_cases

import 'dart:async';

import 'package:find_job_app/core/common/common.dart';
import 'package:find_job_app/core/common/components/coachmark/core/clipper/triangle.clipper.dart';
import 'package:find_job_app/core/common/components/coachmark/core/target/target_content.dart';
import 'package:find_job_app/core/common/components/coachmark/core/util.dart';
import 'package:find_job_app/core/common/components/coachmark/models/tooltip.target.focus.dart';
import 'package:find_job_app/core/common/components/coachmark/coach.mark.handler.dart';
import 'package:flutter/material.dart';

export 'core/core.dart';
export 'models/model.dart';
export 'coach.mark.handler.dart';

/// Handle position arrow and content of tooltip navigation.
enum UITooltipNavPosition {
  top,
  bottom,
}

/// The color of tooltip navigation.
enum UITooltipNavColor {
  black,
  green,
  white,
}

/// The type of button in tooltip navigation.
enum UITooltipNavButtonType {
  base,
  link,
}

/// Show navigation tooltip (coach mark).
///
/// ```dart
/// // Add this line into initState method.
/// UITooltipNavigation.showNavigation(
/// context,
/// buttonType: UITooltipNavButtonType.link,
/// targets: [
///   UITargetFocus(
///     identify: 'target 1',
///     keyTarget: [key1],
///     tooltipKey: key1,
///     position: UITooltipNavPosition.bottom,
///     title: 'Title',
///     hasClose: true,
///     description: 'Description',
///     buttonPrev: UITooltipNavButton(label: 'Back'),
///     buttonNext: UITooltipNavButton(label: 'Next'),
///     step: 'Step 1/3',
///   )
/// ]
///
class RCoachMark {
  static void show(
    BuildContext context, {
    UITooltipNavColor? color = UITooltipNavColor.black,
    List<RTargetFocus> targets = const [],
    double? opacityShadow,
    FutureOr<void> Function(RTargetFocus)? onClickOverlay,
    FutureOr<void> Function(RTargetFocus)? onClickTarget,
    FutureOr<void> Function(RTargetFocus, TapDownDetails)?
        onClickTargetWithTapPosition,
    bool Function()? onSkip,
    dynamic Function()? onFinish,
    bool useSafeArea = true,
    UITooltipNavButtonType? buttonType,
  }) {
    RCoachMarkHandler(
      hideSkip: true,
      opacityShadow: opacityShadow ?? 0.5,
      onClickOverlay: onClickOverlay,
      onClickTarget: onClickTarget,
      onClickTargetWithTapPosition: onClickTargetWithTapPosition,
      onSkip: onSkip,
      onFinish: onFinish,
      useSafeArea: useSafeArea,
      pulseEnable: false,
      targets: targets.asMap().entries.map((entry) {
        return _internalTargetFocus(
          entry.value,
          entry.key,
          color,
          buttonType,
        );
      }).toList(),
    ).show(context: context);
  }

  /// Show navigation tooltip (coach mark) with skip button.
  static RTargetFocus _internalTargetFocus(
    RTargetFocus targetFocus,
    int index,
    UITooltipNavColor? color,
    UITooltipNavButtonType? buttonType,
  ) {
    const _arrowSize = Size(16, 8);

    Color bgColor() {
      switch (color) {
        case UITooltipNavColor.green:
          return RColor.background.success;
        case UITooltipNavColor.white:
          return RColor.background.white;
        default:
          return RColor.background.dark;
      }
    }

    Color textColor() {
      switch (color) {
        case UITooltipNavColor.green:
          return RColor.text.white;
        case UITooltipNavColor.white:
          return RColor.text.dark;
        default:
          return RColor.text.white;
      }
    }

    void onPrevPressed(RTooltipNavigationController controller) {
      targetFocus.buttonPrev?.onTap == null
          ? controller.previous()
          : targetFocus.buttonPrev!.onTap!(controller);
    }

    void onNextPressed(RTooltipNavigationController controller) {
      targetFocus.buttonNext?.onTap == null
          ? controller.next()
          : targetFocus.buttonNext!.onTap!(controller);
    }

    ContentAlign align() {
      switch (targetFocus.position) {
        case UITooltipNavPosition.top:
          return ContentAlign.top;
        default:
          return ContentAlign.bottom;
      }
    }

    Alignment _arrowAlign(BuildContext context) {
      if (targetFocus.tooltipKey == null) {
        return Alignment.center;
      }
      final Size contextSize = MediaQuery.of(context).size;

      final box = targetFocus.tooltipKey!.currentContext!.findRenderObject()
          as RenderBox;
      final targetOffset = box.localToGlobal(Offset.zero);
      final BuildContext? targetContext = targetFocus.tooltipKey != null
          ? targetFocus.tooltipKey!.currentContext
          : context;
      final targetRenderBox = targetContext?.findRenderObject() as RenderBox;
      final targetSize = targetRenderBox.size;

      return Alignment(
        (targetOffset.dx +
                    targetSize.width /
                        (targetFocus.horizontalPositionArrow ?? 2)) /
                (contextSize.width - _arrowSize.width - 15) *
                2 -
            1.0,
        targetFocus.position == UITooltipNavPosition.top ? 1.0 : -1.0,
      );
    }

    return RTargetFocus(
      identify: targetFocus.identify,
      keyTarget: targetFocus.keyTarget,
      enableTargetTab: targetFocus.enableTargetTab,
      tooltipKey: targetFocus.tooltipKey,
      radius: targetFocus.radius ?? 5,
      position: targetFocus.position,
      paddingFocus: targetFocus.paddingFocus,
      shape: targetFocus.shape,
      color: targetFocus.color,
      hasClose: targetFocus.hasClose,
      buttonPrev: targetFocus.buttonPrev,
      buttonNext: targetFocus.buttonNext,
      content: targetFocus.content,
      step: targetFocus.step,
      verticalHeight: targetFocus.verticalHeight,
      horizontalPositionArrow: targetFocus.horizontalPositionArrow,
      descAlign: targetFocus.descAlign,
      contents: [
        TargetContent(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          align: align(),
          builder: (context, controller) {
            return ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 300, minWidth: 250),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (targetFocus.position == UITooltipNavPosition.bottom)
                    Align(
                      alignment: _arrowAlign(context),
                      child: CustomPaint(
                        size: _arrowSize,
                        painter: TriangleClipperWidget(
                          color: bgColor(),
                        ),
                      ),
                    ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: bgColor(),
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(5)),
                      color: bgColor(),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RText(
                                targetFocus.title ?? '',
                                color: textColor(),
                                style: RFont.subheading.h6,
                              ),
                              if (targetFocus.hasClose ?? false)
                                InkWell(
                                  onTap: controller.skip,
                                  child: Icon(
                                    Icons.close,
                                    color: RColor.icon.white,
                                    size: 24,
                                  ),
                                )
                              else
                                const SizedBox(),
                            ],
                          ),
                          const SizedBox(height: 8),
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: targetFocus.content ??
                                RText(
                                  targetFocus.description ?? '',
                                  color: textColor(),
                                  textAlign:
                                      targetFocus.descAlign ?? TextAlign.center,
                                ),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RText(
                                targetFocus.step ?? 'Step 1/1',
                                color: textColor(),
                              ),
                              if (buttonType == UITooltipNavButtonType.link)
                                Row(
                                  children: [
                                    if (index > 0)
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 12),
                                        child: RButton(
                                          text: targetFocus.buttonPrev?.label ??
                                              'Kembali',
                                          onPressed: () =>
                                              onPrevPressed(controller),
                                        ),
                                      ),
                                    RButton(
                                      text: targetFocus.buttonNext?.label ??
                                          'Selanjutnya',
                                      onPressed: () =>
                                          onNextPressed(controller),
                                    ),
                                  ],
                                )
                              else
                                Row(
                                  children: [
                                    if (index > 0)
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 12),
                                        child: RButton(
                                          text: targetFocus.buttonPrev?.label ??
                                              'Prev',
                                          onPressed: () =>
                                              onPrevPressed(controller),
                                        ),
                                      ),
                                    RButton(
                                      text: targetFocus.buttonNext?.label ??
                                          'Next',
                                      onPressed: () =>
                                          onNextPressed(controller),
                                    ),
                                  ],
                                ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  if (targetFocus.position == UITooltipNavPosition.top)
                    Align(
                      alignment: _arrowAlign(context),
                      child: CustomPaint(
                        size: const Size(16, 8),
                        painter: TriangleClipperWidget(
                          color: bgColor(),
                          clipPosition: UITooltipNavPosition.top,
                        ),
                      ),
                    ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
