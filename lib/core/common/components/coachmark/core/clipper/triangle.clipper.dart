import 'dart:math';
import 'package:flutter/material.dart';
import '../../coach.mark.navigation.dart';

class TriangleClipperWidget extends CustomPainter {
  TriangleClipperWidget({
    required this.color,
    this.clipPosition = UITooltipNavPosition.bottom,
  });
  final Color color;
  final UITooltipNavPosition? clipPosition;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final path = Path()
      ..moveTo(0, size.height)
      ..lineTo(size.width / 2, 0)
      ..lineTo(size.width, size.height)
      ..close();

    canvas
      ..rotate(clipPosition == UITooltipNavPosition.top ? pi : 0)
      ..drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
