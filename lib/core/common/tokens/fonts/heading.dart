import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utils/utils.dart';
import '../color/color.token.dart';

/// A class that defines various heading text styles.
///
/// The [TextHeading] class extends [TextStyle] and provides predefined
/// text styles for different heading levels (h1, h2, h3, h4) with specific
/// font sizes, weights, and other properties.
class TextHeading extends TextStyle {
  /// Creates a [TextHeading] with default properties.
  TextHeading()
      : super(
          fontSize: 35,
          height: 40.toFigmaLineHeight(35),
          fontFamily: GoogleFonts.spaceGrotesk(
            fontWeight: FontWeight.bold,
          ).fontFamily,
        );

  /// The font family used for the heading text styles

  /// Text style for heading level 1.
  ///
  /// - Font size: 35.sp
  /// - Font weight: Bold
  /// - Font family: Poppins
  /// - Line height: 40.sp.toFigmaLineHeight(35.sp)
  final TextStyle h1 = GoogleFonts.spaceGrotesk(
    fontSize: 35,
    fontWeight: FontWeight.bold,
    height: 40.toFigmaLineHeight(35),
  );

  /// Text style for heading level 2.
  ///
  /// - Font size: 29.sp
  /// - Font weight: Semi-bold (w600)
  /// - Font family: Poppins
  /// - Line height: 32.sp.toFigmaLineHeight(29.sp)
  final TextStyle h2 = GoogleFonts.spaceGrotesk(
    fontSize: 29,
    fontWeight: FontWeight.w600,
    height: 32.toFigmaLineHeight(29),
  );

  /// Text style for heading level 3.
  ///
  /// - Font size: 24.sp
  /// - Font weight: Bold
  /// - Font family: Poppins
  /// - Color: UIColor.text.dark
  /// - Line height: 28.sp.toFigmaLineHeight(24.sp)
  final TextStyle h3 = GoogleFonts.spaceGrotesk(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: RMColor.text.dark,
    height: 28.toFigmaLineHeight(24),
  );

  /// Text style for heading level 4.
  ///
  /// - Font size: 20.sp
  /// - Font weight: Medium (w500)
  /// - Font family: Poppins
  /// - Color: UIColor.text.dark
  /// - Line height: 24.sp.toFigmaLineHeight(20.sp)
  final TextStyle h4 = GoogleFonts.spaceGrotesk(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: RMColor.text.dark,
    height: 24.toFigmaLineHeight(20),
  );
}
