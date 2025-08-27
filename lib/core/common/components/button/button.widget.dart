import 'package:find_job_app/core/util/extension.dart';
import 'package:flutter/material.dart';
import '../../common.dart';

/// A custom widget button of [ElevatedButton].
class RButton extends StatefulWidget {
  /// The text to display on the button.
  final String? text;

  /// The color of the text.
  final Color? textColor;

  /// The color of the background.
  final Color? bgColor;

  /// The icon to display on the leading side of the button.
  final Widget? leadingIcon;

  /// The icon to display on the trailing side of the button.
  final Widget? trailingIcon;

  /// The icon to display on the leading side of the button.
  final Widget? icon;

  /// Whether to fill the width of the button.
  final bool fillWidth;

  /// The border of the button.
  final BoxBorder? border;

  /// The padding of the button.
  final EdgeInsets? padding;

  /// The shadow of the button.
  final BoxShadow? shadow;

  /// Whether to show a loading indicator.
  final bool? isLoading;

  /// The border radius of the button.
  final double? borderRadius;

  final BoxConstraints? constraints;

  /// The callback to be called when the button is pressed.
  final VoidCallback? onPressed;

  const RButton({
    super.key,
    this.text,
    this.textColor,
    this.bgColor,
    this.onPressed,
    this.leadingIcon,
    this.trailingIcon,
    this.fillWidth = false,
    this.icon,
    this.border,
    this.padding,
    this.isLoading,
    this.shadow,
    this.borderRadius,
    this.constraints,
  });

  @override
  State<RButton> createState() => _RButtonState();
}

class _RButtonState extends State<RButton> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: IntrinsicWidth(
        child: GestureDetector(
          onTap: () {
            setState(() {
              isPressed = true;
            });
            Future.delayed(const Duration(milliseconds: 125), () {
              setState(() {
                isPressed = false;
              });
            });
            widget.onPressed?.call();
          },
          onTapDown: (_) {
            setState(() {
              isPressed = true;
            });
          },
          onTapUp: (_) {
            setState(() {
              isPressed = false;
            });
          },
          onTapCancel: () {
            setState(() {
              isPressed = false;
            });
          },
          child: AnimatedContainer(
            transform: isPressed
                ? Matrix4.translationValues(2, 2, 0)
                : Matrix4.identity(),
            duration: const Duration(milliseconds: 125),
            padding: widget.padding ??
                const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            constraints: widget.constraints ??
                const BoxConstraints(maxHeight: 45, minHeight: 45),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(widget.borderRadius ?? 5),
                color: widget.bgColor ?? RColor.background.success,
                border: widget.border,
                boxShadow: isPressed
                    ? []
                    : [
                        widget.shadow ??
                            BoxShadow(
                              color: darken(
                                  (widget.bgColor ?? RColor.background.dark),
                                  0.35),
                              offset: const Offset(4, 4),
                            ),
                      ]),
            child: Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (widget.isLoading != null && (widget.isLoading ?? false))
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          width: 16,
                          height: 16,
                          child: CircularProgressIndicator(
                            strokeWidth: 3,
                            color: widget.textColor ?? RColor.text.white,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        RText(
                          'Loading...',
                          color: widget.textColor ?? RColor.text.white,
                          style: RFont.subheading.h5,
                        )
                      ],
                    ),
                  if (widget.icon != null) widget.icon!,
                  if (widget.leadingIcon != null)
                    Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: widget.leadingIcon!),
                  if (widget.text != null && !(widget.isLoading ?? false))
                    RText(
                      widget.text!,
                      color: widget.textColor ?? RColor.text.white,
                      style: RFont.subheading.h5,
                    ),
                  if (widget.trailingIcon != null)
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: widget.trailingIcon!,
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
