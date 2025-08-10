import 'package:find_job_app/core/common/tokens/color/color.token.dart';
import 'package:find_job_app/core/common/utils/utils.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class RLoading extends StatefulWidget {
  final double? size;
  const RLoading({
    super.key,
    this.size,
  });

  @override
  State<RLoading> createState() => _RLoadingState();
}

class _RLoadingState extends State<RLoading>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    )..repeat();
  }

  @override
  Widget build(BuildContext context) {
    final double size = widget.size ?? 24;
    final double strokeWidth = size / 8;
    return AnimatedBuilder(
      animation: _animationController,
      builder: (_, __) {
        return Stack(
          children: <Widget>[
            Transform.rotate(
              angle: _animationController.evalDouble(
                to: 2 * math.pi,
                begin: 0.68,
                end: 0.95,
                curve: Curves.easeOut,
              ),
              child: Visibility(
                visible: _animationController.value >= 0.5,
                child: Arc.draw(
                  color: RColor.background.dark,
                  size: size,
                  strokeWidth: strokeWidth,
                  startAngle: -math.pi / 2,
                  endAngle: _animationController.evalDouble(
                    from: math.pi / 2,
                    to: math.pi / (size * size),
                    begin: 0.7,
                    end: 0.95,
                    curve: Curves.easeOutSine,
                  ),
                ),
              ),
            ),
            Visibility(
              visible: _animationController.value >= 0.5,
              child: Arc.draw(
                color: RColor.shades.blue.shade300,
                size: size,
                strokeWidth: strokeWidth,
                startAngle: -math.pi / 2,
                endAngle: _animationController.evalDouble(
                  from: -2 * math.pi,
                  to: math.pi / (size * size),
                  begin: 0.6,
                  end: 0.95,
                  curve: Curves.easeOutSine,
                ),
              ),
            ),
            Visibility(
              visible: _animationController.value <= 0.5,
              // visible: true,
              child: Transform.rotate(
                angle: _animationController.evalDouble(
                  to: math.pi * 0.06,
                  begin: 0.48,
                  end: 0.5,
                ),
                child: Arc.draw(
                  color: RColor.background.info,
                  size: size,
                  strokeWidth: strokeWidth,
                  startAngle: -math.pi / 2,
                  endAngle: _animationController.evalDouble(
                    from: math.pi / (size * size),
                    to: 1.94 * math.pi,
                    begin: 0.05,
                    end: 0.48,
                    curve: Curves.easeOutSine,
                  ),
                ),
              ),
            ),
            Visibility(
              visible: _animationController.value >= 0.5,
              child: Arc.draw(
                color: RColor.background.info,
                size: size,
                strokeWidth: strokeWidth,
                startAngle: -math.pi / 2,
                endAngle: _animationController.evalDouble(
                  from: -1.94 * math.pi,
                  to: math.pi / (size * size),
                  begin: 0.5,
                  end: 0.95,
                  curve: Curves.easeOutSine,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}

class Arc extends CustomPainter {
  final Color _color;
  final double _strokeWidth;
  final double _sweepAngle;
  final double _startAngle;

  Arc._(
    this._color,
    this._strokeWidth,
    this._startAngle,
    this._sweepAngle,
  );

  static Widget draw({
    required Color color,
    required double size,
    required double strokeWidth,
    required double startAngle,
    required double endAngle,
  }) =>
      SizedBox(
        width: size,
        height: size,
        child: CustomPaint(
          painter: Arc._(
            color,
            strokeWidth,
            startAngle,
            endAngle,
          ),
        ),
      );

  @override
  void paint(Canvas canvas, Size size) {
    final Rect rect = Rect.fromCircle(
      center: Offset(size.width / 2, size.height / 2),
      radius: size.height / 2,
    );

    const bool useCenter = false;
    final Paint paint = Paint()
      ..color = _color
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = _strokeWidth;

    canvas.drawArc(rect, _startAngle, _sweepAngle, useCenter, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
