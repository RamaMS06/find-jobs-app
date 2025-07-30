import 'dart:math';

import 'package:flutter/material.dart';

class RMCountingText extends StatefulWidget {
  final double from;
  final double to;
  final Duration duration;
  final int decimalPlaces;
  final TextStyle? textStyle;

  const RMCountingText({
    super.key,
    required this.from,
    required this.to,
    this.duration = const Duration(seconds: 2),
    this.decimalPlaces = 0, // Default to integer
    this.textStyle,
  });

  @override
  State<RMCountingText> createState() => _RMCountingTextState();
}

class _RMCountingTextState extends State<RMCountingText>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    );
    _updateAnimation();
  }

  @override
  void didUpdateWidget(covariant RMCountingText oldWidget) {
    super.didUpdateWidget(oldWidget);
    // If the 'from', 'to', or 'duration' changes, update the animation.
    // The parent widget (HomePage) uses a new Key for AnimatedCountingText
    // when a new animation is desired, which effectively recreates this state.
    // This `didUpdateWidget` check handles cases where properties might change
    // without the key changing, though less common for this specific use case.
    if (widget.from != oldWidget.from ||
        widget.to != oldWidget.to ||
        widget.duration != oldWidget.duration) {
      _updateAnimation();
    }
  }

  void _updateAnimation() {
    _animation =
        Tween<double>(begin: widget.from, end: widget.to).animate(_controller);
    _controller.reset();
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (BuildContext context, Widget? child) {
        final double currentValue = _animation.value;
        String formattedValue;

        if (widget.decimalPlaces == 0) {
          formattedValue = currentValue.round().toString();
        } else {
          formattedValue = currentValue.toStringAsFixed(widget.decimalPlaces);
        }

        return Text(
          formattedValue,
          style: widget.textStyle ?? Theme.of(context).textTheme.headlineMedium,
        );
      },
    );
  }
}

/// The main application widget, displaying the animated counter.
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Initial values for the counter
  double _fromValue = 0.0;
  double _toValue = 100.0;
  int _decimalPlaces = 0;
  Duration _animationDuration = const Duration(seconds: 3);
  int _counterKey = 0; // Used to trigger AnimatedSwitcher for new animations

  final Random _random = Random();

  @override
  void initState() {
    super.initState();
    _startNewCount(); // Start the first count automatically when the page loads
  }

  void _startNewCount() {
    setState(() {
      _fromValue =
          _toValue; // Start the new count from where the previous one ended

      // Generate a new random target value, ensuring it's different from the start value
      double newTo;
      do {
        newTo = _random.nextDouble() * 200.0;
        if (_random.nextBool()) {
          newTo *= -1; // Occasionally make the target negative
        }
      } while (
          newTo == _fromValue); // Ensure target is different to show animation

      _toValue = newTo;
      _decimalPlaces = _random.nextBool()
          ? 0
          : 2; // Randomly choose integer or 2 decimal places
      _animationDuration = Duration(
          milliseconds: _random.nextInt(2000) +
              1500); // Random duration between 1.5 and 3.5 seconds
      _counterKey++; // Increment key to force AnimatedSwitcher to rebuild and animate in a new AnimatedCountingText
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Value Counter'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'From: ${_fromValue.toStringAsFixed(_decimalPlaces)}',
              style: const TextStyle(fontSize: 18),
            ),
            Text(
              'To: ${_toValue.toStringAsFixed(_decimalPlaces)}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            // AnimatedSwitcher handles the "sliding text vertically" effect
            // for the entire counter when the target value changes.
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              transitionBuilder: (Widget child, Animation<double> animation) {
                // Defines the slide animation: new content slides in from the bottom.
                final Animation<Offset> offsetAnimation = Tween<Offset>(
                  begin: const Offset(
                      0.0, 1.0), // Start from below the visible area
                  end: Offset.zero, // Move to its final center position
                ).animate(animation);

                return ClipRect(
                  // Clips the child to prevent it from drawing outside its bounds during the slide
                  child: SlideTransition(
                    position: offsetAnimation,
                    child: child,
                  ),
                );
              },
              // The key forces AnimatedSwitcher to treat this as a new widget
              // when _counterKey changes, triggering the slide transition.
              child: RMCountingText(
                key: ValueKey<int>(
                    _counterKey), // Unique key for each new animation cycle
                from: _fromValue,
                to: _toValue,
                duration: _animationDuration,
                decimalPlaces: _decimalPlaces,
                textStyle: Theme.of(context).textTheme.displayLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.primary,
                    ),
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton.icon(
              onPressed: _startNewCount,
              icon: const Icon(Icons.refresh),
              label: const Text('Animate to New Value'),
            ),
          ],
        ),
      ),
    );
  }
}
