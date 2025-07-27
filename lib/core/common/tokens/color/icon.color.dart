import 'package:flutter/material.dart';

/// A class that defines a set of colors for icons.
///
/// This class extends the [Color] class and provides a set of predefined colors
/// that can be used for different icon states or purposes.
class IconColor extends Color {
  IconColor() : super(0xFF7E93A8);

  /// A dark color (#333F47).
  final Color dark = const Color(0xFF333F47);

  /// A light color (#B2BFC8).
  final Color light = const Color(0xFFB2BFC8);

  /// A light dark color (#7E93A8).
  final Color lightdark = const Color(0xFF7E93A8);

  /// A white color (#FFFFFF).
  final Color white = const Color(0xFFFFFFFF);

  /// A success color (#08A94C).
  final Color success = const Color(0xFF08A94C);

  /// A secondary color (#F8981D).
  final Color secondary = const Color(0xFFF8981D);

  /// A danger color (#D62926).
  final Color danger = const Color(0xFFD62926);

  /// An info color (#047CDD).
  final Color info = const Color(0xFF047CDD);

  /// A warning color (#FCD305).
  final Color warning = const Color(0xFFFCD305);

}
