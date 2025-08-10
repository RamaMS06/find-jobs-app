// ignore_for_file: prefer_asserts_with_message

import 'dart:math';

import 'package:flutter/material.dart';

import '../clipper/clipper.dart';
import '../target/target.dart';

class Sizing {

  Sizing(this.x, this.y, this.w, this.h);
  final double x;
  final double y;
  final double w;
  final double h;
}

class LightPaintRect extends CustomPainter {

  LightPaintRect({
    required this.progress,
    required this.targets,
    this.colorShadow = Colors.black,
    this.opacityShadow = 0.8,
    this.offset = 10,
    this.radius = 10,
    this.borderSide,
  }) : assert(opacityShadow >= 0 && opacityShadow <= 1);
  final double progress;
  final List<TargetPosition> targets;
  final Color colorShadow;
  final double opacityShadow;
  final double offset;
  final double radius;
  final BorderSide? borderSide;

  static Path _drawJustHole(
    Size canvasSize,
    double x,
    double y,
    double w,
    double h,
  ) {
    return Path()
      ..moveTo(x + w, y)
      ..lineTo(x + w, y + h)
      ..lineTo(x, y + h)
      ..lineTo(x, y)
      ..close();
  }

  static Path _drawJustRHole(
    Size canvasSize,
    double x,
    double y,
    double w,
    double h,
    double radius,
  ) {
    final diameter = radius * 2;

    return Path()
      ..moveTo(x, y + radius)
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
      ..close();
  }

  @override
  void paint(Canvas canvas, Size size) {
    final sizings = <Sizing>[];
    for (final target in targets) {
      if (target.offset == Offset.zero) continue;

      final maxSize = max(size.width, size.height) +
          max(target.size.width, target.size.height) +
          target.getBiggerSpaceBorder(size);

      sizings.add(Sizing(
        -maxSize / 2 * (1 - progress) + target.offset.dx - offset / 2,
        -maxSize / 2 * (1 - progress) + target.offset.dy - offset / 2,
        maxSize * (1 - progress) + target.size.width + offset,
        maxSize * (1 - progress) + target.size.height + offset,
      ),);
    }

    for (final sizing in sizings) {
      canvas.clipPath(
        radius > 0
            ? RectClipper.rRectHolePath(
                size, sizing.x, sizing.y, sizing.w, sizing.h, radius,)
            : RectClipper.rectHolePath(
                size, sizing.x, sizing.y, sizing.w, sizing.h,),
      );

      if (borderSide != null && borderSide?.style != BorderStyle.none) {
        canvas.clipPath(
          radius > 0
              ? _drawJustRHole(
                  size, sizing.x, sizing.y, sizing.w, sizing.h, radius,)
              : _drawJustHole(size, sizing.x, sizing.y, sizing.w, sizing.h),
        );
      }
    }

    canvas.drawPaint(
      Paint()
        ..style = PaintingStyle.fill
        ..color = colorShadow.withOpacity(opacityShadow),
    );
  }

  @override
  bool shouldRepaint(LightPaintRect oldDelegate) {
    return oldDelegate.progress != progress || oldDelegate.targets != targets;
  }
}
