import 'package:flutter/material.dart';

/// Represents the background color palette for the design system.
class BackgroundColor extends Color {
  /// Creates a [BackgroundColor] instance with the default color.
  BackgroundColor() : super(0xFF333F47);

  /// Dark background color variations.
  final BackgroundDarkColor dark = BackgroundDarkColor();

  /// Light background color variations.
  final BackgroundLightColor light = BackgroundLightColor();

  /// Light dark background color variations.
  final BackgroundLightDarkColor lightdark = BackgroundLightDarkColor();


  /// White background color variations.
  final BackgroundWhiteColor white = BackgroundWhiteColor();

  /// Success background color variations.
  final BackgroundSuccessColor success = BackgroundSuccessColor();

  /// Secondary background color variations.
  final BackgroundSecondaryColor secondary = BackgroundSecondaryColor();

  /// Info background color variations.
  final BackgroundInfoColor info = BackgroundInfoColor();

  /// Warning background color variations.
  final BackgroundWarningColor warning = BackgroundWarningColor();

  /// Danger background color variations.
  final BackgroundDangerColor danger = BackgroundDangerColor();

  /// Neutral background color variations.
  final BackgroundNeutralColor neutral = BackgroundNeutralColor();
}

/// Represents the dark background color variations.
class BackgroundDarkColor extends Color {
  /// Creates a [BackgroundDarkColor] instance with the default color.
  BackgroundDarkColor() : super(0xFF2C3E50);

  /// Hover state color for dark background.
  final Color pressed = const Color(0xFF213040);

  /// Disabled state color for dark background.
  final Color disable = const Color(0x802C3E50);
}

/// Represents the light background color variations.
class BackgroundLightColor extends Color {
  /// Creates a [BackgroundLightColor] instance with the default color.
  BackgroundLightColor() : super(0xFFF5F8FA);

  /// Hover state color for light background.
  final Color pressed = const Color(0xFFE8ECF5);

  /// Disabled state color for light background.
  final Color disable = const Color(0x80F5F8FA);
}


/// Represents the light dark background color variations.
class BackgroundLightDarkColor extends Color {
  /// Creates a [BackgroundLightDarkColor] instance with the default color.
  BackgroundLightDarkColor() : super(0xFF7E93A8);

  /// Hover state color for light dark background.
  final Color pressed = const Color(0xFF333F47);

  /// Disabled state color for light dark background.
  final Color disable = const Color(0x807E93A8);
}


/// Represents the white background color variations.
class BackgroundWhiteColor extends Color {
  /// Creates a [BackgroundWhiteColor] instance with the default color.
  BackgroundWhiteColor() : super(0xFFFFFFFF);

  /// Hover state color for white background.
  final Color pressed = const Color(0xFFF5F8FA);

  /// Disabled state color for white background.
  final Color disable = const Color(0x80FFFFFF);
}

/// Represents the success background color variations.
class BackgroundSuccessColor extends Color {
  /// Creates a [BackgroundSuccessColor] instance with the default color.
  BackgroundSuccessColor() : super(0xFF2ECC71);

  /// Hover state color for success background.
  final Color pressed = const Color(0xFF27AE60);

  /// Disabled state color for success background.
  final Color disable = const Color(0x802ECC71);

  /// Subtle state color for success background.
  final Color subtle = const Color(0xFFD5FADD);

  /// Bolder state color for success background.
  final Color bolder = const Color(0xFF27AE60);
}

/// Represents the secondary background color variations.
class BackgroundSecondaryColor extends Color {
  /// Creates a [BackgroundSecondaryColor] instance with the default color.
  BackgroundSecondaryColor() : super(0xFFE67E22);

  /// Hover state color for secondary background.
  final Color pressed = const Color(0xFFD35400);

  /// Disabled state color for secondary background.
  final Color disable = const Color(0x80E67E22);

  /// Subtle state color for secondary background.
  final Color subtle = const Color(0xFFFEEAD2);

  /// Bolder state color for secondary background.
  final Color bolder = const Color(0xFFD35400);
}

/// Represents the info background color variations.
class BackgroundInfoColor extends Color {
  /// Creates a [BackgroundInfoColor] instance with the default color.
  BackgroundInfoColor() : super(0xFF047CDD);

  /// Hover state color for info background.
  final Color pressed = const Color(0xFF0363B1);

  /// Disabled state color for info background.
  final Color disable = const Color(0x80047CDD);

  /// Subtle state color for info background.
  final Color subtle = const Color(0xFFCDE5F8);

  /// Bolder state color for info background.
  final Color bolder = const Color(0xFF0363B1);
}

/// Represents the warning background color variations.
class BackgroundWarningColor extends Color {
  /// Creates a [BackgroundWarningColor] instance with the default color.
  BackgroundWarningColor() : super(0xFFFCD305);

  /// Hover state color for warning background.
  final Color pressed = const Color(0xFFCAA904);

  /// Disabled state color for warning background.
  final Color disable = const Color(0x80FCD305);

  /// Subtle state color for warning background.
  final Color subtle = const Color(0xFFFEF6CD);

  /// Bolder state color for warning background.
  final Color bolder = const Color(0xFFCAA904);
}

/// Represents the danger background color variations.
class BackgroundDangerColor extends Color {
  /// Creates a [BackgroundDangerColor] instance with the default color.
  BackgroundDangerColor() : super(0xFFD62926);

  /// Hover state color for danger background.
  final Color pressed = const Color(0xFFAB211E);

  /// Disabled state color for danger background.
  final Color disable = const Color(0x80D62926);

  /// Subtle state color for danger background.
  final Color subtle = const Color(0xFFF7D4D4);

  /// Bolder state color for danger background.
  final Color bolder = const Color(0xFFAB211E);
}


/// Represents the neutral background color variations.
class BackgroundNeutralColor extends Color {
  /// Creates a [BackgroundNeutralColor] instance with the default color.
  BackgroundNeutralColor() : super(0xFFD2DFE8);

  /// Subtle state color for neutral background.
  final Color subtle = const Color(0xFFE8ECF5);

  /// Bolder state color for neutral background.
  final Color bolder = const Color(0xFFB2BFC8);
}
