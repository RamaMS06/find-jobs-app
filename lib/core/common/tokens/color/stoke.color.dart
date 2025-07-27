import 'package:flutter/material.dart';

/// A collection of ***Custom Colors*** for the BUMA Apps.
class StrokeColor extends Color {
  /// Default stroke color.
  StrokeColor() : super(0xFF7E93A8);

  /// Dark stroke color.
  final Color dark = const Color(0xFF333F47);

  /// Light stroke color.
  final Color light = const Color(0xFFE8ECF5);

  /// Light dark stroke color.
  final Color lightdark = const Color(0xFF7E93A8);

  /// White stroke color.
  final Color white = const Color(0xFFFFFFFF);

  /// Button stroke color.
  final Color button = const Color(0xFFD2DFE8);

  /// Success stroke color.
  final StrokeSuccessColor success = StrokeSuccessColor();

  /// Secondary stroke color.
  final StrokeSecondaryColor secondary = StrokeSecondaryColor();

  /// Danger stroke color.
  final StrokeDangerColor danger = StrokeDangerColor();

  /// Info stroke color.
  final StrokeInfoColor info = StrokeInfoColor();

  /// Warning stroke color.
  final StrokeWarningColor warning = StrokeWarningColor();
}

/// A collection of ***Success Colors*** for the BUMA Apps.
class StrokeSuccessColor extends Color {
  /// Default success color.
  StrokeSuccessColor() : super(0xFF08A94C);

  /// Bolder success color.
  final Color bolder = const Color(0xFF06873D);
}

/// A collection of ***Secondary Colors*** for the BUMA Apps.
class StrokeSecondaryColor extends Color {
  /// Default secondary color.
  StrokeSecondaryColor() : super(0xFFF8981D);

  /// Bolder secondary color.
  final Color bolder = const Color(0xFFC67A17);
}

/// A collection of ***Danger Colors*** for the BUMA Apps.
class StrokeDangerColor extends Color {
  /// Default danger color.
  StrokeDangerColor() : super(0xFFD62926);

  /// Bolder danger color.
  final Color bolder = const Color(0xFFAB211E);
}

/// A collection of ***Info Colors*** for the BUMA Apps.
class StrokeInfoColor extends Color {
  /// Default info color.
  StrokeInfoColor() : super(0xFF047CDD);

  /// Bolder info color.
  final Color bolder = const Color(0xFF0363B1);
}

/// A collection of ***Warning Colors*** for the BUMA Apps.
class StrokeWarningColor extends Color {
  /// Default warning color.
  StrokeWarningColor() : super(0xFFFCD305);

  /// Bolder warning color.
  final Color bolder = const Color(0xFFCAA904);
}
