import 'package:find_job_app/core/common/tokens/color/color.token.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utils/utils.dart';

/// A custom text style class for subheadings.
///
/// This class extends [TextStyle] and provides predefined text styles
/// for different heading levels (h5, h6, h7, h8) with specific font sizes,
/// weights, colors, and line heights.
class TextSubHeading extends TextStyle {
  /// Creates a [TextSubHeading] with a default font size of 20, bold weight,
  /// black color, and a line height of 24.
  TextSubHeading()
      : super(
          fontSize: 16,
          color: RMColor.text.dark,
          height: 20.toFigmaLineHeight(16),
          fontFamily: GoogleFonts.spaceGrotesk(
            fontWeight: FontWeight.bold,
          ).fontFamily,
        );

  /// Text style for heading level 5 with a font size of 16, bold weight,
  /// and a line height adjusted for Figma.
  final TextStyle h5 = GoogleFonts.spaceGrotesk(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: RMColor.text.dark,
    height: 20.toFigmaLineHeight(16),
  );

  /// Text style for heading level 6 with a font size of 14, semi-bold weight,
  /// and a line height adjusted for Figma.
  final TextStyle h6 = GoogleFonts.spaceGrotesk(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: RMColor.text.dark,
    height: 16.toFigmaLineHeight(14),
  );

  /// Text style for heading level 7 with a font size of 12, bold weight,
  /// and a line height adjusted for Figma.
  final TextStyle h7 = GoogleFonts.spaceGrotesk(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: RMColor.text.dark,
    height: 16.toFigmaLineHeight(12),
  );
}
