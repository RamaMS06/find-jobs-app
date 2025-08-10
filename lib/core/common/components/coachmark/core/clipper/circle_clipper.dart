import 'dart:math';

import 'package:flutter/rendering.dart';

class CircleClipper extends CustomClipper<Path> {
  CircleClipper(
    this.progress,
    this.positioned,
    this.sizeCircle,
    this.borderSide,
  );
  final double progress;
  final List<Offset> positioned;
  final List<double> sizeCircle;
  final BorderSide? borderSide;

  @override
  Path getClip(Size size) {
    if (positioned.isEmpty || sizeCircle.isEmpty) return Path();
    final maxSize = max(size.width, size.height);

    final path = Path();
    for (var i = 0; i < positioned.length; i++) {
      final radius = maxSize * (1 - progress) + sizeCircle[i];
      path.addPath(circleHolePath(size, positioned[i], radius), Offset.zero);
    }

    return path;
  }

  static Path circleHolePath(
    Size size,
    Offset positioned,
    double radius,
  ) {
    return Path()
      ..moveTo(0, 0)
      ..lineTo(0, positioned.dy)
      ..arcTo(
        Rect.fromCircle(center: positioned, radius: radius),
        pi,
        pi,
        false,
      )
      ..arcTo(
        Rect.fromCircle(center: positioned, radius: radius),
        0,
        pi,
        false,
      )
      ..lineTo(0, positioned.dy)
      ..lineTo(0, size.height)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, 0)
      ..close();
  }

  @override
  bool shouldReclip(covariant CircleClipper oldClipper) {
    return progress != oldClipper.progress;
  }
}
