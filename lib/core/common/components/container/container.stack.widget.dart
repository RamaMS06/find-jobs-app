import 'package:find_job_app/core/common/tokens/color/color.token.dart';
import 'package:flutter/material.dart';

class RContainerStack extends StatefulWidget {
  final Color? frontColor;

  final Color? backColor;

  final Color? frontBorderColor;

  final Color? backBorderColor;

  final double? width;

  final double? height;

  final Widget? child;

  final VoidCallback? onTap;

  const RContainerStack(
      {super.key,
      this.frontColor,
      this.backColor,
      this.frontBorderColor,
      this.backBorderColor,
      this.width,
      this.height,
      this.child,
      this.onTap});

  @override
  State<RContainerStack> createState() => _RContainerStackState();
}

class _RContainerStackState extends State<RContainerStack> {
  @override
  Widget build(BuildContext context) {
    final stackWidth = widget.width ?? MediaQuery.sizeOf(context).width;
    final stackHeight = widget.height ?? 40.0;

    return GestureDetector(
      onTap: widget.onTap,
      child: SizedBox(
        width: stackWidth,
        height: stackHeight,
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Positioned.fill(
              top: 4,
              left: 4, 
              child: Container(
                width: stackWidth, 
                decoration: BoxDecoration(
                  color: widget.backColor ?? RColor.background.white,
                  border: Border.all(
                    color: widget.backBorderColor ?? RColor.background.dark,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(5), 
                ),
              ),
            ),
            Positioned.fill(
              right: 6,
              bottom: 6,
              child: Container(
                width: stackWidth,
                height: stackHeight,
                decoration: BoxDecoration(
                  color: widget.frontColor ?? RColor.background.white,
                  border: Border.all(
                    color: widget.frontBorderColor ?? RColor.background.dark,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(5), 
                ),
                child: widget.child,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
