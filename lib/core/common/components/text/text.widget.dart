import 'package:flutter/material.dart';
import '../../common.dart';

class RText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final Color? color;
  final TextOverflow? overflow;
  final TextAlign? textAlign;
  final int? maxLength;
  final int? maxLines;
  final bool hasLineThrough;
  final Color? decorationColor;

  const RText(
    this.text, {
    super.key,
    this.style,
    this.color,
    this.overflow,
    this.textAlign,
    this.maxLength,
    this.maxLines,
    this.hasLineThrough = false,
    this.decorationColor,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text.length > (maxLength ?? 200)
          ? text.substring(0, maxLength ?? 200)
          : text,
      textAlign: textAlign,
      style: (style ?? RFont.body.bold).copyWith(
        color: color ?? RColor.text.dark,
        overflow: overflow,
        decoration:
            hasLineThrough ? TextDecoration.lineThrough : TextDecoration.none,
        decorationColor: decorationColor ?? RColor.text.dark,
        decorationThickness: 1,
      ),
      maxLines: maxLines,
    );
  }
}
