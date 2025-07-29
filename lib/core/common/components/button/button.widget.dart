import 'package:find_job_app/core/util/extension.dart';
import 'package:flutter/material.dart';
import '../../common.dart';

class RMButton extends StatefulWidget {
  final String text;

  final Color? textColor;

  final Color? bgColor;

  final Widget? leadingIcon;

  final Widget? trailingIcon;

  final bool fillWidth;

  final VoidCallback? onPressed;

  const RMButton({
    super.key,
    required this.text,
    this.textColor,
    this.bgColor,
    this.onPressed,
    this.leadingIcon,
    this.trailingIcon,
    this.fillWidth = false,
  });

  @override
  State<RMButton> createState() => _RMButtonState();
}

class _RMButtonState extends State<RMButton> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: IntrinsicWidth(
        child: GestureDetector(
          onTap: widget.onPressed,
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
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            constraints: const BoxConstraints(maxHeight: 45, minHeight: 45),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: widget.bgColor ?? RMColor.background.success,
                boxShadow: isPressed
                    ? []
                    : [
                        BoxShadow(
                          color: darken(
                              (widget.bgColor ?? RMColor.background.dark),
                              0.35),
                          offset: const Offset(4, 4),
                        ),
                      ]),
            child: Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (widget.leadingIcon != null)
                    Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: widget.leadingIcon!),
                  RMText(
                    widget.text,
                    color: widget.textColor ?? RMColor.text.white,
                    style: RMFont.subheading.h5,
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
