// ignore_for_file: prefer_void_to_null, prefer_null_aware_method_calls,
// ignore_for_file: cascade_invocations, inference_failure_on_untyped_parameter

import 'dart:async';
import 'package:flutter/material.dart';
import '../../common.dart';

/// Creating enumeration type of [RMAlert].
enum RMAlertType {
  /// Used to convey success states.
  success,

  /// Used to signal errors, the alert function comes into
  /// play once a user has initiated an action, subsequently
  /// encountering either internal or external issues.
  error,

  /// Used to prevent errors from occurring.
  warning,

  /// Used to convey general information that isn’t critical.
  neutral,

  /// Used to display information that needs user’s
  /// attention and may require further steps.
  info,
}

/// A custom widget alert of [SnackBar].
class RMAlert extends StatelessWidget {
  factory RMAlert(
    String title, {
    EdgeInsetsGeometry? margin,
    RMAlertType? type,
    String? description,
    bool? reverseColor,
    Key? key,
  }) {
    return RMAlert._(
      title,
      type: type,
      margin: margin,
      description: description,
      reverseColor: reverseColor,
      duration: const Duration(milliseconds: 2000),
      key: key,
    );
  }
  const RMAlert._(
    this.title, {
    this.margin,
    this.type = RMAlertType.success,
    this.description,
    this.reverseColor,
    this.duration,
    super.key,
  });

  /// Show alert with [ScaffoldMessenger]
  /// need [Scaffold] to use this Widget
  /// for its [context].
  RMAlert.showAlert(
    BuildContext context,
    this.title, {
    required this.type,
    this.margin,
    this.description,
    this.reverseColor,
    this.duration,
    super.key,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        margin: margin,
        elevation: 0,
        duration: duration ?? const Duration(milliseconds: 2000),
        backgroundColor: Colors.transparent,
        behavior: SnackBarBehavior.floating,
        content: TweenAnimationBuilder<double>(
          tween: Tween<double>(begin: 0.6, end: 1.0),
          duration: const Duration(milliseconds: 500),
          curve: Curves.elasticOut,
          builder: (context, value, child) {
            return Transform.scale(
              scale: value,
              child: child,
            );
          },
          child: _CustomContentSnackBar(
            title: title,
            type: type ?? RMAlertType.success,
            reverseColor: reverseColor,
            desc: description,
          ),
        ),
      ),
    );
  }

  /// Display label of title.
  final String title;

  /// Display optional describe of contents.
  final String? description;

  /// Describe what [RMAlertType] you want.
  final RMAlertType? type;

  /// Makes the colors inverted with [reverseColor].
  final bool? reverseColor;

  /// A duration for showing snackbar.
  final Duration? duration;

  /// Add a margin for snackbar.
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return _CustomContentSnackBar(
      title: title,
      type: type ?? RMAlertType.success,
      reverseColor: reverseColor,
      desc: description,
    );
  }
}

/// {@template custom_snackbar}
/// Make [SnackBar] custom for reusable widget.
///
/// The creation of this widget class is due to two implementations,
/// namely calling the widget using [UIAlert.showAlert] and also directly
/// calling the widget to display content using the [RMAlert] class.
///
/// {@endtemplate}
class _CustomContentSnackBar extends StatelessWidget {
  /// {@macro custom_snackbar}
  const _CustomContentSnackBar({
    required this.title,
    required this.type,
    this.desc,
    this.reverseColor,
  });

  /// Display label into content of [SnackBar].
  final String title;

  /// Describing type into content of custom [SnackBar].
  final RMAlertType type;

  /// Display optional describe into content of custom [SnackBar].
  final String? desc;

  /// Makes the colors inverted with [reverseColor].
  final bool? reverseColor;

  /// Creating return [Color] method to separate background colors
  /// based on desired type.
  Color get _backgroundColor {
    if (reverseColor ?? false) {
      return switch (type) {
        RMAlertType.success => RMColor.background.success,
        RMAlertType.error => RMColor.background.danger,
        RMAlertType.info => RMColor.background.info,
        RMAlertType.neutral => RMColor.background.neutral,
        RMAlertType.warning => RMColor.background.warning
      };
    } else {
      return switch (type) {
        RMAlertType.success => RMColor.background.success,
        RMAlertType.error => RMColor.background.danger,
        RMAlertType.info => RMColor.background.info,
        RMAlertType.neutral => RMColor.background.neutral,
        RMAlertType.warning => RMColor.background.warning
      };
    }
  }

  /// Creating return [Icon] method to separate icon
  /// based on desired type.
  Icon get _icon {
    const iconSize = 16.0;
    return switch (type) {
      RMAlertType.success => Icon(
          Icons.check_circle,
          size: iconSize,
          color: reverseColor ?? false
              ? RMColor.background.white
              : RMColor.background.success,
        ),
      RMAlertType.error => Icon(
          Icons.warning_rounded,
          size: iconSize,
          color: reverseColor ?? false
              ? RMColor.background.danger
              : RMColor.text.white,
        ),
      RMAlertType.neutral => Icon(
          Icons.info,
          size: iconSize,
          color: reverseColor ?? false
              ? RMColor.background.white
              : RMColor.background.info,
        ),
      RMAlertType.info => Icon(
          Icons.info,
          size: iconSize,
          color: reverseColor ?? false
              ? RMColor.background.white
              : RMColor.background.info,
        ),
      RMAlertType.warning => Icon(
          Icons.error,
          size: iconSize,
          color: reverseColor ?? false
              ? RMColor.background.white
              : RMColor.background.warning,
        ),
    };
  }

  /// Creating return [Color] method to separate text colors
  /// based on desired type.
  Color get _textColor {
    if (reverseColor ?? false) {
      return switch (type) {
        RMAlertType.success => RMColor.text.white,
        RMAlertType.error => RMColor.text.white,
        RMAlertType.neutral => RMColor.text.white,
        RMAlertType.info => RMColor.text.white,
        RMAlertType.warning => RMColor.text.dark
      };
    }
    return switch (type) {
      RMAlertType.success => RMColor.background.success,
      RMAlertType.error => RMColor.background.danger,
      RMAlertType.neutral => RMColor.text.dark,
      RMAlertType.info => RMColor.background.info,
      RMAlertType.warning => RMColor.background.warning
    };
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 12,
        left: 16,
        right: 16,
        bottom: 12,
      ),
      decoration: BoxDecoration(
        color: _backgroundColor,
        boxShadow: [
          BoxShadow(
            color: RMColor.background.dark.withOpacity(
              0.4,
            ),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _icon,
              const SizedBox(width: 4),
              Expanded(
                child: RMText(
                  title,
                  color: _textColor,
                ),
              ),
            ],
          ),
          if (desc?.isEmpty ?? false || desc == null)
            const SizedBox()
          else
            Padding(
              padding: const EdgeInsets.only(
                top: 4,
              ),
              child: RMText(
                desc ?? '',
                color: _textColor,
              ),
            ),
        ],
      ),
    );
  }
}
