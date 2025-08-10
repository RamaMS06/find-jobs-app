import 'package:find_job_app/core/common/tokens/color/color.token.dart';
import 'package:find_job_app/core/util/extension.dart';
import 'package:flutter/material.dart';

class RContainerShadow extends StatelessWidget {
  final double? width;
  final double? height;
  final Color? color;
  final double? borderRadius;
  final Widget? child;
  const RContainerShadow(
      {super.key,
      this.width,
      this.height,
      this.color,
      this.borderRadius,
      this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(borderRadius ?? 999),
        boxShadow: [
          BoxShadow(
            color: darken((color ?? RColor.background.dark), 0.1),
            offset: const Offset(2, 3),
          )
        ],
      ),
      child: child,
    );
  }
}
