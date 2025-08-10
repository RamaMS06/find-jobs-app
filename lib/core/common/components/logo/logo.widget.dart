import 'package:find_job_app/core/common/tokens/color/color.token.dart';
import 'package:flutter/material.dart';

class RLogo extends StatelessWidget {
  const RLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyle(
          fontFamily: 'Retro',
          fontSize: 42,
          color: RColor.shades.blue[400],
        ),
        children: [
          const TextSpan(
            text: 'W',
          ),
          TextSpan(
            text: 'o',
            style: TextStyle(
              color: RColor.background.dark,
            ),
          ),
          const TextSpan(
            text: 'kly',
          ),
        ],
      ),
    );
  }
}
