import 'package:flutter/material.dart';
import '../../common.dart';

class RMText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final Color? color;
  final TextOverflow? overflow;

  const RMText(
    this.text, {
    super.key,
    this.style,
    this.color,
    this.overflow,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: (style ?? RMFont.body.bold).copyWith(
        color: color ?? RMColor.text.dark,
        overflow: overflow ?? TextOverflow.ellipsis,
      ),
    );
  }
}
