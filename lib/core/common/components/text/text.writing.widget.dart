import 'dart:async';

import 'package:find_job_app/core/common/common.dart';
import 'package:flutter/material.dart';

class RMTypewriterText extends StatefulWidget {
  final String text;
  final TextStyle? textStyle;
  final Duration duration;
  final bool loop;
  final Duration pauseDuration;

  const RMTypewriterText({
    super.key,
    required this.text,
    this.textStyle,
    this.duration = const Duration(milliseconds: 100),
    this.loop = false,
    this.pauseDuration = const Duration(seconds: 1),
  });

  @override
  State<RMTypewriterText> createState() => _RMTypewriterTextState();
}

class _RMTypewriterTextState extends State<RMTypewriterText>
    with SingleTickerProviderStateMixin {
  String _displayedText = '';
  int _charIndex = 0;
  Timer? _typingTimer;
  late AnimationController _cursorController;
  late Animation<double> _cursorOpacity;

  @override
  void initState() {
    super.initState();
    _startTyping();

    _cursorController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    )..repeat(reverse: true);

    _cursorOpacity =
        Tween<double>(begin: 1.0, end: 0.0).animate(_cursorController);
  }

  void _startTyping() {
    _typingTimer?.cancel(); // cancel any previous timer
    _displayedText = '';
    _charIndex = 0;

    _typingTimer = Timer.periodic(widget.duration, (timer) {
      if (_charIndex < widget.text.length) {
        setState(() {
          _displayedText += widget.text[_charIndex];
          _charIndex++;
        });
      } else {
        timer.cancel();

        // Wait, then loop again if needed
        if (widget.loop) {
          Future.delayed(widget.pauseDuration, () {
            if (mounted) {
              _startTyping();
            }
          });
        }
      }
    });
  }

  @override
  void dispose() {
    _typingTimer?.cancel();
    _cursorController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        RMText(
          _displayedText,
          style: widget.textStyle ?? RMFont.subheading.h6,
        ),
        FadeTransition(
          opacity: _cursorOpacity,
          child: RMText(
            '|',
            style: widget.textStyle ??
                Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Colors.grey,
                    ),
          ),
        ),
      ],
    );
  }
}
