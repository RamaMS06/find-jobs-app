// ignore_for_file: prefer_void_to_null, prefer_null_aware_method_calls,
// ignore_for_file: cascade_invocations, inference_failure_on_untyped_parameter

import 'package:flutter/material.dart';
import '../../common.dart';

/// Creating enumeration type of [RAlert].
enum RAlertType {
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
class RAlert extends StatelessWidget {
  factory RAlert(
    String title, {
    EdgeInsetsGeometry? margin,
    RAlertType? type,
    String? description,
    bool? reverseColor,
    Key? key,
  }) {
    return RAlert._(
      title,
      type: type,
      margin: margin,
      description: description,
      reverseColor: reverseColor,
      duration: const Duration(milliseconds: 2000),
      key: key,
    );
  }
  const RAlert._(
    this.title, {
    this.margin,
    this.type = RAlertType.success,
    this.description,
    this.reverseColor,
    this.duration,
    super.key,
  });

  /// Show alert with [ScaffoldMessenger]
  /// need [Scaffold] to use this Widget
  /// for its [context].
  RAlert.showAlert(
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
            type: type ?? RAlertType.success,
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

  /// Describe what [RAlertType] you want.
  final RAlertType? type;

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
      type: type ?? RAlertType.success,
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
/// calling the widget to display content using the [RAlert] class.
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
  final RAlertType type;

  /// Display optional describe into content of custom [SnackBar].
  final String? desc;

  /// Makes the colors inverted with [reverseColor].
  final bool? reverseColor;

  /// Creating return [Color] method to separate background colors
  /// based on desired type.
  Color get _backgroundColor {
    if (reverseColor ?? false) {
      return switch (type) {
        RAlertType.success => RColor.background.success,
        RAlertType.error => RColor.background.danger,
        RAlertType.info => RColor.background.info,
        RAlertType.neutral => RColor.background.neutral,
        RAlertType.warning => RColor.background.warning
      };
    } else {
      return switch (type) {
        RAlertType.success => RColor.background.success,
        RAlertType.error => RColor.background.danger,
        RAlertType.info => RColor.background.info,
        RAlertType.neutral => RColor.background.neutral,
        RAlertType.warning => RColor.background.warning
      };
    }
  }

  /// Creating return [Icon] method to separate icon
  /// based on desired type.
  Icon get _icon {
    const iconSize = 16.0;
    return switch (type) {
      RAlertType.success => Icon(
          Icons.check_circle,
          size: iconSize,
          color: reverseColor ?? false
              ? RColor.background.white
              : RColor.background.success,
        ),
      RAlertType.error => Icon(
          Icons.warning_rounded,
          size: iconSize,
          color: reverseColor ?? false
              ? RColor.background.danger
              : RColor.text.white,
        ),
      RAlertType.neutral => Icon(
          Icons.info,
          size: iconSize,
          color: reverseColor ?? false
              ? RColor.background.white
              : RColor.background.info,
        ),
      RAlertType.info => Icon(
          Icons.info,
          size: iconSize,
          color: reverseColor ?? false
              ? RColor.background.white
              : RColor.background.info,
        ),
      RAlertType.warning => Icon(
          Icons.error,
          size: iconSize,
          color: reverseColor ?? false
              ? RColor.background.white
              : RColor.background.warning,
        ),
    };
  }

  /// Creating return [Color] method to separate text colors
  /// based on desired type.
  Color get _textColor {
    if (reverseColor ?? false) {
      return switch (type) {
        RAlertType.success => RColor.text.white,
        RAlertType.error => RColor.text.white,
        RAlertType.neutral => RColor.text.white,
        RAlertType.info => RColor.text.white,
        RAlertType.warning => RColor.text.dark
      };
    }
    return switch (type) {
      RAlertType.success => RColor.background.success,
      RAlertType.error => RColor.background.danger,
      RAlertType.neutral => RColor.text.dark,
      RAlertType.info => RColor.background.info,
      RAlertType.warning => RColor.background.warning
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
            color: RColor.background.dark.withOpacity(
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
                child: RText(
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
              child: RText(
                desc ?? '',
                color: _textColor,
              ),
            ),
        ],
      ),
    );
  }
}
