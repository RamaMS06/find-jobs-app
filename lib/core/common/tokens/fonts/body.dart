// ignore_for_file: lines_longer_than_80_chars

import 'package:find_job_app/core/common/tokens/color/color.token.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utils/utils.dart';

/// A custom text style class for body text in the design system.
///
/// This class extends [TextStyle] and provides various predefined text styles
/// for different use cases such as bold, small, extra small, italic, underline,
/// and paragraph text styles.
class TextBody extends TextStyle implements GoogleFonts {
  /// Creates a default body text style with a font size of 12.sp, medium weight,
  /// dark text color, and a line height of 16.sp.
  TextBody()
      : super(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          fontFamily: GoogleFonts.spaceGrotesk(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: RMColor.text.dark,
            height: 16.toFigmaLineHeight(12),
          ).fontFamily,
        );

  /// A bold text style with a font size of 12.sp, bold weight, dark text color,
  /// and a line height of 16.sp.
  final TextStyle bold = GoogleFonts.spaceGrotesk(
    fontSize: 12,
    fontWeight: FontWeight.bold,
    color: RMColor.text.dark,
    height: 16.toFigmaLineHeight(12),
  );

  /// A small text style with a font size of 11.sp, medium weight, dark text color,
  /// and a line height of 16.sp.
  final TextStyle small = GoogleFonts.spaceGrotesk(
    fontSize: 11,
    fontWeight: FontWeight.w500,
    color: RMColor.text.dark,
    height: 16.toFigmaLineHeight(11),
  );

  /// An extra small text style with a font size of 8.sp, medium weight, dark text color,
  /// and a line height of 12.sp.
  final TextStyle xstraSmall = GoogleFonts.spaceGrotesk(
    fontSize: 8,
    fontWeight: FontWeight.w500,
    color: RMColor.text.dark,
    height: 12.toFigmaLineHeight(8),
  );

  /// An italic text style with a font size of 12.sp, medium weight, dark text color,
  /// italic font style, and a line height of 16.sp.
  final TextStyle italic = GoogleFonts.spaceGrotesk(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: RMColor.text.dark,
    fontStyle: FontStyle.italic,
    height: 16.toFigmaLineHeight(12),
  );

  /// An underline text style with a font size of 12.sp, medium weight, dark text color,
  /// underline decoration, and a line height of 16.sp.
  final TextStyle underline = GoogleFonts.spaceGrotesk(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: RMColor.text.dark,
    decoration: TextDecoration.underline,
    height: 16.toFigmaLineHeight(12),
  );

  /// A paragraph text style with a font size of 12.sp, medium weight, dark text color,
  /// and a line height of 24.sp.
  final TextStyle paragraph = GoogleFonts.spaceGrotesk(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: RMColor.text.dark,
    height: 24.toFigmaLineHeight(12),
  );
}
