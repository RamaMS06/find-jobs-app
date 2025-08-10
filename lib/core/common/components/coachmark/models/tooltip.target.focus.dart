import 'package:flutter/material.dart';
import '../coach.mark.navigation.dart';

/// Target Focus
///
/// A class that handles the target focus.
class RTargetFocus {
  RTargetFocus({
    required this.identify,
    required this.keyTarget,
    this.targetPosition,
    this.enableTargetTab = true,
    this.borderSide,
    this.enableOverlayTab = false,
    this.shape,
    this.tooltipKey,
    this.title,
    this.paddingFocus,
    this.hasClose,
    this.description,
    this.content,
    this.buttonNext,
    this.buttonPrev,
    this.position,
    this.horizontalPositionArrow,
    this.focusAnimationDuration,
    this.unFocusAnimationDuration,
    this.radius,
    this.step,
    this.color,
    this.pulseVariation,
    this.verticalHeight,
    this.contents,
    this.alignSkip,
    this.descAlign,
  });

  /// The identify of the target focus.
  final String identify;

  /// The position of the target focus.
  final TargetPosition? targetPosition;

  /// The key of multiple target,
  final List<GlobalKey> keyTarget;

  /// The border side of the target focus.
  final BorderSide? borderSide;

  /// The padding focus of the target focus.
  final double? paddingFocus;

  /// The shape of the target focus.
  final ShapeLightFocus? shape;

  /// The enable target tab.
  final bool enableTargetTab;

  /// The enable overlay tab.
  final bool enableOverlayTab;

  /// The color of the target focus.
  final Color? color;

  /// The key to identify focus tooltip.
  final GlobalKey? tooltipKey;

  /// The title of the content.
  final String? title;

  /// The description of the content.
  final String? description;

  /// The content of the target focus.
  final Widget? content;

  /// The description align of the content.
  final TextAlign? descAlign;

  /// The has close button.
  final bool? hasClose;

  /// The button next.
  final UITooltipButtonHandler? buttonNext;

  /// The button previous.
  final UITooltipButtonHandler? buttonPrev;

  /// The step of the target focus.
  final String? step;

  /// The horizontal alignment of the target focus.
  final double? horizontalPositionArrow;

  /// The focus animation duration.
  final Duration? focusAnimationDuration;

  /// The unfocus animation duration.
  final Duration? unFocusAnimationDuration;

  /// The radius of the target focus.
  final double? radius;

  /// The position of the target focus.
  final UITooltipNavPosition? position;

  /// The pulse variation of the target focus.
  final Tween<double>? pulseVariation;

  /// The vertical height of the target focus.
  final double? verticalHeight;

  /// The contents of the target focus.
  final List<TargetContent>? contents;

  /// The align skip of the target focus.
  final AlignmentGeometry? alignSkip;
}
