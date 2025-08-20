import 'package:find_job_app/core/common/tokens/color/color.token.dart';
import 'package:find_job_app/core/util/extension.dart';
import 'package:flutter/material.dart';

class RContainerShadow extends StatefulWidget {
  final double? width;
  final double? height;
  final Color? color;
  final double? borderRadius;
  final Widget? child;
  final EdgeInsets? padding;
  final void Function()? onTap;
  final Border? border;
  const RContainerShadow(
      {super.key,
      this.width,
      this.height,
      this.color,
      this.borderRadius,
      this.child,
      this.padding,
      this.onTap,
      this.border});

  @override
  State<RContainerShadow> createState() => _RContainerShadowState();
}

class _RContainerShadowState extends State<RContainerShadow> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: widget.onTap != null ? () {
          setState(() {
            isPressed = true;
          });
          Future.delayed(const Duration(milliseconds: 125), () {
            setState(() {
              isPressed = false;
            });
          });
          widget.onTap?.call();
        } : null,
        onTapDown: widget.onTap != null ? (_) {
          setState(() {
            isPressed = true;
          });
        } : null,
        onTapUp: widget.onTap != null ? (_) {
          setState(() {
            isPressed = false;
          });
        } : null,
        onTapCancel: widget.onTap != null ? () {
          setState(() {
            isPressed = false;
          });
        } : null,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 125),
          transform: isPressed
              ? Matrix4.translationValues(2, 2, 0)
              : Matrix4.identity(),
          padding: widget.padding,
          clipBehavior: Clip.hardEdge,
          width: widget.width,
          height: widget.height,
          decoration: BoxDecoration(
            color: widget.color,
            border: widget.border,
            borderRadius: BorderRadius.circular(widget.borderRadius ?? 999),
            boxShadow: isPressed
                ? []
                : [
                    BoxShadow(
                      color:
                          darken((widget.color ?? RColor.background.dark), 0.1),
                      offset: const Offset(2, 3),
                    )
                  ],
          ),
          child: widget.child,
        ));
  }
}
