// ignore_for_file: cast_nullable_to_non_nullable, avoid_dynamic_calls

import 'dart:async';
import 'dart:ui';

import 'package:find_job_app/core/common/components/coachmark/core/clipper/circle_clipper.dart';
import 'package:find_job_app/core/common/components/coachmark/core/clipper/rect_clipper.dart';
import 'package:find_job_app/core/common/components/coachmark/core/paint/light_paint_rect.dart';
import 'package:find_job_app/core/common/components/coachmark/core/target/target_position.dart';
import 'package:find_job_app/core/common/components/coachmark/core/util.dart';
import 'package:find_job_app/core/common/components/coachmark/models/tooltip.target.focus.dart';
import 'package:flutter/material.dart';

class RAnimatedFocusLight extends StatefulWidget {
  const RAnimatedFocusLight({
    required this.targets,
    super.key,
    this.focus,
    this.finish,
    this.removeFocus,
    this.clickTarget,
    this.clickTargetWithTapPosition,
    this.clickOverlay,
    this.paddingFocus = 10,
    this.colorShadow = Colors.black,
    this.opacityShadow = 0.8,
    this.focusAnimationDuration,
    this.unFocusAnimationDuration,
    this.pulseAnimationDuration,
    this.pulseVariation,
    this.imageFilter,
    this.pulseEnable = true,
    this.rootOverlay = false,
    this.initialFocus = 0,
    this.backgroundSemanticLabel,
  }) : assert(targets.length > 0);
  final List<RTargetFocus> targets;
  final void Function(RTargetFocus)? focus;
  final FutureOr<dynamic> Function(RTargetFocus)? clickTarget;
  final FutureOr<dynamic> Function(RTargetFocus, TapDownDetails)?
      clickTargetWithTapPosition;
  final FutureOr<dynamic> Function(RTargetFocus)? clickOverlay;
  final Function? removeFocus;
  final void Function()? finish;
  final double paddingFocus;
  final Color colorShadow;
  final double opacityShadow;
  final Duration? focusAnimationDuration;
  final Duration? unFocusAnimationDuration;
  final Duration? pulseAnimationDuration;
  final Tween<double>? pulseVariation;
  final bool pulseEnable;
  final bool rootOverlay;
  final ImageFilter? imageFilter;
  final int initialFocus;
  final String? backgroundSemanticLabel;

  @override
  // ignore: no_logic_in_create_state
  RAnimatedFocusLightState createState() => pulseEnable
      ? AnimatedPulseFocusLightState()
      : AnimatedStaticFocusLightState();
}

abstract class RAnimatedFocusLightState extends State<RAnimatedFocusLight>
    with TickerProviderStateMixin {
  final borderRadiusDefault = 10.0;
  final defaultFocusAnimationDuration = const Duration(milliseconds: 600);
  late AnimationController _controller;
  late CurvedAnimation _curvedAnimation;

  late RTargetFocus _targetFocus;
  List<Offset> _positioned = [];
  TargetPosition? _targetPosition;

  List<TargetPosition>? _targetPositions;

  List<double> _sizeCircle = [];
  int _currentFocus = 0;
  double _progressAnimated = 0;
  int nextIndex = 0;

  Future<void> _revertAnimation();
  void _listener(AnimationStatus status);

  @override
  void initState() {
    super.initState();
    _currentFocus = widget.initialFocus;
    _targetFocus = widget.targets[_currentFocus];
    _controller = AnimationController(
      vsync: this,
      duration: _targetFocus.focusAnimationDuration ??
          widget.focusAnimationDuration ??
          defaultFocusAnimationDuration,
    )..addStatusListener(_listener);

    _curvedAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.ease,
    );

    Future.delayed(Duration.zero, _runFocus);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void next() => _tapHandler();

  void previous() {
    nextIndex--;
    _revertAnimation();
  }

  void goTo(int index) {
    nextIndex = index;
    _revertAnimation();
  }

  Future<void> _tapHandler({
    bool targetTap = false,
    bool overlayTap = false,
  }) async {
    nextIndex++;
    if (targetTap) {
      await widget.clickTarget?.call(_targetFocus);
    }
    if (overlayTap) {
      await widget.clickOverlay?.call(_targetFocus);
    }
    return _revertAnimation();
  }

  Future<void> _tapHandlerForPosition(TapDownDetails tapDetails) async {
    await widget.clickTargetWithTapPosition?.call(_targetFocus, tapDetails);
  }

  void _runFocus() {
    if (_currentFocus < 0) return;
    _targetFocus = widget.targets[_currentFocus];

    _controller.duration = _targetFocus.focusAnimationDuration ??
        widget.focusAnimationDuration ??
        defaultFocusAnimationDuration;

    TargetPosition? targetPosition;
    try {
      targetPosition = getTargetCurrent(
        _targetFocus,
        rootOverlay: widget.rootOverlay,
      );
    } on NotFoundTargetException catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
    }

    if (targetPosition == null) {
      _finish();
      return;
    }

    safeSetState(() {
      _targetPosition = targetPosition;
      _positioned = _targetFocus.keyTarget.map((e) {
        final box = e.currentContext!.findRenderObject() as RenderBox;
        final position = box.localToGlobal(Offset.zero);
        return Offset(
          position.dx + (box.size.width / 2),
          position.dy + (box.size.height / 2),
        );
      }).toList();

      _sizeCircle = _targetFocus.keyTarget.map((e) {
        final box = e.currentContext!.findRenderObject() as RenderBox;
        if (box.size.height > box.size.width) {
          return box.size.height * 0.6 + _getPaddingFocus();
        } else {
          return box.size.width * 0.6 + _getPaddingFocus();
        }
      }).toList();

      _targetPositions = _targetFocus.keyTarget.map((e) {
        final box = e.currentContext!.findRenderObject() as RenderBox;
        final position = box.localToGlobal(Offset.zero);
        return TargetPosition(box.size, position);
      }).toList();
    });

    _controller
      ..forward()
      ..duration = _targetFocus.unFocusAnimationDuration ??
          widget.unFocusAnimationDuration ??
          _targetFocus.focusAnimationDuration ??
          widget.focusAnimationDuration ??
          defaultFocusAnimationDuration;
  }

  void _goToFocus(int index) {
    if (index >= 0 && index < widget.targets.length) {
      _currentFocus = index;
      _runFocus();
    } else {
      _finish();
    }
  }

  void _finish() {
    safeSetState(() => _currentFocus = 0);
    widget.finish!();
  }

  Widget _getLightPaint(RTargetFocus targetFocus) {
    if (widget.imageFilter != null) {
      return ClipPath(
        clipper: _getClipper(targetFocus.shape),
        child: BackdropFilter(
          filter: widget.imageFilter!,
          child: _getSizedPainter(targetFocus),
        ),
      );
    } else {
      return _getSizedPainter(targetFocus);
    }
  }

  SizedBox _getSizedPainter(RTargetFocus targetFocus) {
    return SizedBox(
      width: double.maxFinite,
      height: double.maxFinite,
      child: CustomPaint(
        painter: _getPainter(targetFocus),
      ),
    );
  }

  CustomClipper<Path> _getClipper(ShapeLightFocus? shape) {
    return shape == ShapeLightFocus.RRect
        ? RectClipper(
            progress: _progressAnimated,
            offset: _getPaddingFocus(),
            target: _targetPosition ?? TargetPosition(Size.zero, Offset.zero),
            radius: _targetFocus.radius ?? 0,
            borderSide: _targetFocus.borderSide,
          )
        : CircleClipper(
            _progressAnimated,
            _positioned,
            _sizeCircle,
            _targetFocus.borderSide,
          );
  }

  CustomPainter _getPainter(RTargetFocus target) {
    return LightPaintRect(
      colorShadow: target.color ?? widget.colorShadow,
      progress: _progressAnimated,
      offset: _getPaddingFocus(),
      targets: _targetPositions ?? [],
      radius: target.radius ?? 0,
      borderSide: target.borderSide,
      opacityShadow: widget.opacityShadow,
    );
    // if (target.shape == ShapeLightFocus.RRect) {
    // } else {
    //   return LightPaint(
    //     _progressAnimated,
    //     _positioned,
    //     _sizeCircle,
    //     colorShadow: target.color ?? widget.colorShadow,
    //     borderSide: target.borderSide,
    //     opacityShadow: widget.opacityShadow,
    //   );
    // }
  }

  double _getPaddingFocus() {
    return _targetFocus.paddingFocus ?? (widget.paddingFocus);
  }

  BorderRadius _betBorderRadiusTarget() {
    final radius = _targetFocus.shape == ShapeLightFocus.Circle
        ? _targetPosition?.size.width ?? borderRadiusDefault
        : _targetFocus.radius ?? borderRadiusDefault;
    return BorderRadius.circular(radius);
  }
}

class AnimatedStaticFocusLightState extends RAnimatedFocusLightState {
  double get left => (_targetPosition?.offset.dx ?? 0) - _getPaddingFocus() * 2;

  double get top => (_targetPosition?.offset.dy ?? 0) - _getPaddingFocus() * 2;

  double get width {
    return (_targetPosition?.size.width ?? 0) + _getPaddingFocus() * 4;
  }

  double get height {
    return (_targetPosition?.size.height ?? 0) + _getPaddingFocus() * 4;
  }

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: widget.backgroundSemanticLabel,
      button: true,
      child: InkWell(
        excludeFromSemantics: true,
        onTap: _targetFocus.enableOverlayTab
            ? () => _tapHandler(overlayTap: true)
            : null,
        child: AnimatedBuilder(
          animation: _controller,
          builder: (_, child) {
            _progressAnimated = _curvedAnimation.value;
            return Stack(
              children: <Widget>[
                _getLightPaint(_targetFocus),
                Positioned(
                  left: left,
                  top: top,
                  child: InkWell(
                    borderRadius: _betBorderRadiusTarget(),
                    onTapDown: _tapHandlerForPosition,
                    onTap: _targetFocus.enableTargetTab
                        ? () => _tapHandler(targetTap: true)
                        : () {},
                    child: Container(
                      color: Colors.transparent,
                      width: width,
                      height: height,
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  @override
  Future<void> _revertAnimation() {
    return _controller.reverse();
  }

  @override
  void _listener(AnimationStatus status) {
    if (status == AnimationStatus.completed) {
      widget.focus?.call(_targetFocus);
    }
    if (status == AnimationStatus.dismissed) {
      _goToFocus(nextIndex);
    }

    if (status == AnimationStatus.reverse) {
      widget.removeFocus?.call();
    }
  }
}

class AnimatedPulseFocusLightState extends RAnimatedFocusLightState {
  final defaultPulseAnimationDuration = const Duration(milliseconds: 500);
  final defaultPulseVariation = Tween(begin: 1, end: 0.99);
  late AnimationController _controllerPulse;
  late Animation<dynamic> _tweenPulse;

  bool _finishFocus = false;
  bool _initReverse = false;

  double get left => (_targetPosition?.offset.dx ?? 0) - _getPaddingFocus() * 2;

  double get top => (_targetPosition?.offset.dy ?? 0) - _getPaddingFocus() * 2;

  double get width =>
      (_targetPosition?.size.width ?? 0) + _getPaddingFocus() * 4;

  double get height =>
      (_targetPosition?.size.height ?? 0) + _getPaddingFocus() * 4;

  @override
  void initState() {
    super.initState();
    _controllerPulse = AnimationController(
      vsync: this,
      duration: widget.pulseAnimationDuration ?? defaultPulseAnimationDuration,
    );

    _tweenPulse = _createTweenAnimation(
      (_targetFocus.pulseVariation ??
          widget.pulseVariation ??
          defaultPulseVariation) as Tween<double>,
    );

    _controllerPulse.addStatusListener(_listenerPulse);
  }

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: widget.backgroundSemanticLabel,
      button: true,
      child: InkWell(
        excludeFromSemantics: true,
        onTap: _targetFocus.enableOverlayTab
            ? () => _tapHandler(overlayTap: true)
            : null,
        child: AnimatedBuilder(
          animation: _controller,
          builder: (_, child) {
            _progressAnimated = _curvedAnimation.value;
            return AnimatedBuilder(
              animation: _controllerPulse,
              builder: (_, child) {
                if (_finishFocus) {
                  _progressAnimated = _tweenPulse.value as double;
                }
                return Stack(
                  children: <Widget>[
                    _getLightPaint(_targetFocus),
                    Positioned(
                      left: left,
                      top: top,
                      child: InkWell(
                        borderRadius: _betBorderRadiusTarget(),
                        onTap: _targetFocus.enableTargetTab
                            ? () => _tapHandler(targetTap: true)

                            /// Essential for collecting [TapDownDetails].
                            /// Do not make [null]
                            : () {},
                        onTapDown: _tapHandlerForPosition,
                        child: Container(
                          color: Colors.transparent,
                          width: width,
                          height: height,
                        ),
                      ),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }

  @override
  void _runFocus() {
    _tweenPulse = _createTweenAnimation(
      (_targetFocus.pulseVariation ??
          widget.pulseVariation ??
          defaultPulseVariation) as Tween<double>,
    );
    _finishFocus = false;
    super._runFocus();
  }

  @override
  Future<void> _revertAnimation() {
    safeSetState(() {
      _initReverse = true;
    });

    return _controllerPulse.reverse(from: _controllerPulse.value);
  }

  @override
  void dispose() {
    _controllerPulse.dispose();
    super.dispose();
  }

  @override
  void _listener(AnimationStatus status) {
    if (status == AnimationStatus.completed) {
      safeSetState(() => _finishFocus = true);

      widget.focus?.call(_targetFocus);

      _controllerPulse.forward();
    }
    if (status == AnimationStatus.dismissed) {
      safeSetState(() {
        _finishFocus = false;
        _initReverse = false;
      });
      _goToFocus(nextIndex);
    }

    if (status == AnimationStatus.reverse) {
      widget.removeFocus?.call();
    }
  }

  void _listenerPulse(AnimationStatus status) {
    if (status == AnimationStatus.completed) {
      _controllerPulse.reverse();
    }

    if (status == AnimationStatus.dismissed) {
      if (_initReverse) {
        safeSetState(() => _finishFocus = false);
        _controller.reverse();
      } else if (_finishFocus) {
        _controllerPulse.forward();
      }
    }
  }

  Animation<dynamic> _createTweenAnimation(Tween<double> tween) {
    return tween.animate(
      CurvedAnimation(parent: _controllerPulse, curve: Curves.ease),
    );
  }
}
