import 'package:flutter/material.dart';

/// A collection of ***Custom Colors*** for the BUMA Apps.
class TextColor extends Color {
  TextColor() : super(0xFF333F47);

  /// Dark color used for primary text.
  final Color dark = const Color(0xFF333F47);

  /// Light dark color used for secondary text.
  final Color light = const Color(0xFFB2BFC8);

  /// Light color used for text on dark backgrounds.
  final Color lightdark = const Color(0xFF7E93A8);

  /// White color used for text on dark backgrounds.
  final Color white = const Color(0xFFFFFFFF);

  /// Success color used for positive messages.
  final TextSuccessColor success = TextSuccessColor();

  /// Secondary color used for less prominent elements.
  final TextSecondaryColor secondary = TextSecondaryColor();

  /// Danger color used for error messages.
  final TextDangerColor danger = TextDangerColor();

  /// Info color used for informational messages.
  final TextInfoColor info = TextInfoColor();

  /// Warning color used for cautionary messages.
  final TextWarningColor warning = TextWarningColor();
}

/// Represents a success text color with a default and bolder variant.
class TextSuccessColor extends Color {
  TextSuccessColor() : super(0xFF08A94C);

  /// Bolder variant of the success text color.
  final Color bolder = const Color(0xFF06873D);
}

/// Represents a secondary text color with a default and bolder variant.
class TextSecondaryColor extends Color {
  TextSecondaryColor() : super(0xFFF8981D);

  /// Bolder variant of the secondary text color.
  final Color bolder = const Color(0xFFC67A17);
}

/// Represents a danger text color with a default and bolder variant.
class TextDangerColor extends Color {
  TextDangerColor() : super(0xFFD62926);

  /// Bolder variant of the danger text color.
  final Color bolder = const Color(0xFFAB211E);
}

/// Represents an info text color with a default and bolder variant.
class TextInfoColor extends Color {
  TextInfoColor() : super(0xFF047CDD);

  /// Bolder variant of the info text color.
  final Color bolder = const Color(0xFF0363B1);
}

/// Represents a warning text color with a default and bolder variant.
class TextWarningColor extends Color {
  TextWarningColor() : super(0xFFFCD305);

  /// Bolder variant of the warning text color.
  final Color bolder = const Color(0xFFCAA904);
}
