// ignore_for_file: prefer_asserts_with_message

import 'dart:math';

import 'package:flutter/material.dart';

import '../clipper/circle_clipper.dart';

class LightPaint extends CustomPainter {

  LightPaint(
    this.progress,
    this.positioned,
    this.sizeCircle, {
    this.colorShadow = Colors.black,
    this.opacityShadow = 0.8,
    this.borderSide,
  }) : assert(opacityShadow >= 0 && opacityShadow <= 1);
  final double progress;
  final List<Offset> positioned;
  final List<double> sizeCircle;
  final Color colorShadow;
  final double opacityShadow;
  final BorderSide? borderSide;

  @override
  void paint(Canvas canvas, Size size) {
    if (positioned.isEmpty) return;
    final maxSize = max(size.width, size.height);

    final circleHole = <Path>[];

    for (var i = 0; i < positioned.length - 1; i++) {
      final pos = positioned[i];
      final radius = maxSize * (1 - progress) + sizeCircle[i];
      circleHole.add(CircleClipper.circleHolePath(
        size,
        pos,
        radius,
      ),);

      final justCircleHole = Path()
        ..arcTo(
          Rect.fromCircle(center: pos, radius: radius),
          pi,
          pi,
          false,
        )
        ..arcTo(
          Rect.fromCircle(center: pos, radius: radius),
          0,
          pi,
          false,
        )
        ..moveTo(pos.dx - radius, pos.dy)
        ..close();

      if (borderSide != null && borderSide?.style != BorderStyle.none) {
        canvas.drawPath(
          justCircleHole,
          Paint()
            ..style = PaintingStyle.stroke
            ..color = borderSide!.color
            ..strokeWidth = borderSide!.width,
        );
      }
    }

    for (final path in circleHole) {
      canvas.clipPath(path);
    }

    canvas.drawPaint(
      Paint()
        ..style = PaintingStyle.fill
        ..color = colorShadow.withOpacity(opacityShadow),
    );
  }

  @override
  bool shouldRepaint(LightPaint oldDelegate) {
    return oldDelegate.progress != progress ||
        oldDelegate.positioned != positioned;
  }
}
