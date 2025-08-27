import 'package:find_job_app/core/common/tokens/color/color.token.dart';
import 'package:flutter/material.dart';

enum RDividerVariant { solid, dashed }

enum RDividerDirection { horizontal, vertical }

class RDivider extends StatelessWidget {
  final double height;
  final double thickness;
  final Color? color;
  final double indent;
  final double endIndent;
  final RDividerVariant variant;
  final RDividerDirection direction;

  const RDivider({
    super.key,
    this.height = 16.0,
    this.thickness = 1.0,
    this.color,
    this.indent = 0.0,
    this.endIndent = 0.0,
    this.variant = RDividerVariant.solid,
    this.direction = RDividerDirection.horizontal,
  });

  /// Horizontal divider (default)
  const RDivider.horizontal({
    Key? key,
    double height = 16.0,
    double thickness = 1.0,
    Color? color,
    double indent = 0.0,
    double endIndent = 0.0,
    RDividerVariant variant = RDividerVariant.solid,
  }) : this(
          key: key,
          height: height,
          thickness: thickness,
          color: color,
          indent: indent,
          endIndent: endIndent,
          variant: variant,
          direction: RDividerDirection.horizontal,
        );

  /// Vertical divider
  const RDivider.vertical({
    Key? key,
    double width = 16.0,
    double thickness = 1.0,
    Color? color,
    double indent = 0.0,
    double endIndent = 0.0,
    RDividerVariant variant = RDividerVariant.solid,
  }) : this(
          key: key,
          height: width,
          thickness: thickness,
          color: color,
          indent: indent,
          endIndent: endIndent,
          variant: variant,
          direction: RDividerDirection.vertical,
        );

  @override
  Widget build(BuildContext context) {
    final dividerColor = color ?? RColor.background.lightdark;

    if (direction == RDividerDirection.horizontal) {
      if (variant == RDividerVariant.solid) {
        return Divider(
          height: height,
          thickness: thickness,
          color: dividerColor,
          indent: indent,
          endIndent: endIndent,
        );
      } else {
        // Dashed horizontal divider
        return SizedBox(
          height: height,
          child: CustomPaint(
            painter: _DashedLinePainter(
              color: dividerColor,
              thickness: thickness,
              indent: indent,
              endIndent: endIndent,
              isVertical: false,
            ),
            child: Container(),
          ),
        );
      }
    } else {
      // Vertical divider
      if (variant == RDividerVariant.solid) {
        return VerticalDivider(
          width: height,
          thickness: thickness,
          color: dividerColor,
          indent: indent,
          endIndent: endIndent,
        );
      } else {
        // Dashed vertical divider
        return SizedBox(
          width: height,
          child: CustomPaint(
            painter: _DashedLinePainter(
              color: dividerColor,
              thickness: thickness,
              indent: indent,
              endIndent: endIndent,
              isVertical: true,
            ),
            child: Container(),
          ),
        );
      }
    }
  }
}

class _DashedLinePainter extends CustomPainter {
  final Color color;
  final double thickness;
  final double indent;
  final double endIndent;
  final double dashWidth;
  final double dashSpace;
  final bool isVertical;

  _DashedLinePainter({
    required this.color,
    required this.thickness,
    required this.indent,
    required this.endIndent,
    this.dashWidth = 5.0,
    this.dashSpace = 3.0,
    this.isVertical = false,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = thickness
      ..style = PaintingStyle.stroke;

    if (!isVertical) {
      // Horizontal dashed line
      double startX = indent;
      final y = size.height / 2;
      final maxX = size.width - endIndent;

      while (startX < maxX) {
        final endX = (startX + dashWidth).clamp(0, maxX);
        canvas.drawLine(
            Offset(startX.toDouble(), y), Offset(endX.toDouble(), y), paint);
        startX += dashWidth + dashSpace;
      }
    } else {
      // Vertical dashed line
      double startY = indent;
      final x = size.width / 2;
      final maxY = size.height - endIndent;

      while (startY < maxY) {
        final endY = (startY + dashWidth).clamp(0, maxY);
        canvas.drawLine(
            Offset(x, startY.toDouble()), Offset(x, endY.toDouble()), paint);
        startY += dashWidth + dashSpace;
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
