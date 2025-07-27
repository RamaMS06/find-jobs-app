import 'font.dart';

/// This abstract class defines various text styles
/// used throughout the application. Each text style is created using the
/// Google Fonts package with the Poppins font. The font sizes and heights are
/// responsive, using the flutter_screenutil package for scaling.
abstract class RMFont {
  
  /// Represents the heading text style.
  static final TextHeading heading = TextHeading();

  /// Represents the subheading text style.
  static final TextSubHeading subheading = TextSubHeading();

  /// Represents the body text style.
  static final TextBody body = TextBody();
}
