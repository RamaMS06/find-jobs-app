import 'color.dart';

/// A collection of ***Custom Colors*** for the BUMA Apps.
///
/// Use the colors defined in this class to maintain consistency
/// across the BUMA App Modules.
abstract class RMColor {
  /// Text Color
  static final TextColor text = TextColor();

  /// Icon Color
  static final IconColor icon = IconColor();

  /// Background Color
  static final BackgroundColor background = BackgroundColor();

  /// Stroke Color
  static final StrokeColor stroke = StrokeColor();
  
  /// Shades Color
  static final ShadesColor shades = ShadesColor();

}
