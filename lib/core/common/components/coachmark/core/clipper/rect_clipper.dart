import 'dart:math';

import 'package:flutter/rendering.dart';
import '../target/target.dart';

class RectClipper extends CustomClipper<Path> {

  RectClipper({
    required this.progress,
    required this.target,
    required this.offset,
    required this.radius,
    this.borderSide,
  });
  final double progress;
  final TargetPosition target;
  final double offset;
  final double radius;
  final BorderSide? borderSide;

  @override
  Path getClip(Size size) {
    if (target.offset == Offset.zero) return Path();

    final maxSize = max(size.width, size.height) +
        max(target.size.width, target.size.height) +
        target.getBiggerSpaceBorder(size);

    final x = -maxSize / 2 * (1 - progress) + target.offset.dx - offset / 2;
    final y = -maxSize / 2 * (1 - progress) + target.offset.dy - offset / 2;
    final w = maxSize * (1 - progress) + target.size.width + offset;
    final h = maxSize * (1 - progress) + target.size.height + offset;

    return radius > 0
        ? rRectHolePath(size, x, y, w, h, radius)
        : rectHolePath(size, x, y, w, h);
  }

  @override
  bool shouldReclip(covariant RectClipper oldClipper) {
    return progress != oldClipper.progress;
  }

  static Path rectHolePath(
    Size canvasSize,
    double x,
    double y,
    double w,
    double h,
  ) {
    return Path()
      ..moveTo(0, 0)
      ..lineTo(0, y)
      ..lineTo(x + w, y)
      ..lineTo(x + w, y + h)
      ..lineTo(x, y + h)
      ..lineTo(x, y)
      ..lineTo(0, y)
      ..lineTo(0, canvasSize.height)
      ..lineTo(canvasSize.width, canvasSize.height)
      ..lineTo(canvasSize.width, 0)
      ..close();
  }

  static Path rRectHolePath(
    Size canvasSize,
    double x,
    double y,
    double w,
    double h,
    double radius,
  ) {
    final diameter = radius * 2;

    return Path()
      ..moveTo(0, 0)
      ..lineTo(0, y + radius)
      ..arcTo(
        Rect.fromLTWH(x, y, diameter, diameter),
        pi,
        pi / 2,
        false,
      )
      ..arcTo(
        Rect.fromLTWH(x + w - diameter, y, diameter, diameter),
        3 * pi / 2,
        pi / 2,
        false,
      )
      ..arcTo(
        Rect.fromLTWH(x + w - diameter, y + h - diameter, diameter, diameter),
        0,
        pi / 2,
        false,
      )
      ..arcTo(
        Rect.fromLTWH(x, y + h - diameter, diameter, diameter),
        pi / 2,
        pi / 2,
        false,
      )
      ..lineTo(x, y + radius)
      ..lineTo(0, y + radius)
      ..lineTo(0, canvasSize.height)
      ..lineTo(canvasSize.width, canvasSize.height)
      ..lineTo(canvasSize.width, 0)
      ..close();
  }
}
