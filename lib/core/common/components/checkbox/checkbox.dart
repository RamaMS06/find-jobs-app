import 'package:flutter/material.dart';

class RCheckbox extends StatelessWidget {
  const RCheckbox({
    super.key,
    required this.value,
    required this.onChanged,
    this.fillColor,
    this.checkColor,
  });

  final bool value;
  final void Function(bool?)? onChanged;
  final Color? fillColor;
  final Color? checkColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 24,
      height: 24,
      child: Transform.scale(
        scale: 0.85,
        child: Checkbox(
          value: value,
          onChanged: onChanged,
          fillColor: MaterialStateProperty.all(fillColor),
          checkColor: checkColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
    );
  }
}
