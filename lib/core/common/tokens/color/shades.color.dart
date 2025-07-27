import 'package:flutter/material.dart';

class ShadesColor {
  /// Green Color Swatch
  ///
  /// Example usage:
  /// ```dart
  /// UIColor.green[400]
  /// ```
  final MaterialColor green = const MaterialColor(
    _greenPrimaryValue,
    <int, Color>{
      0: Color(0xFFDBFDEA),
      50: Color(0xFFC6F5DA),
      100: Color(0xFFB1ECCA),
      150: Color(0xFF9CE4BB),
      200: Color(0xFF87DBAB),
      300: Color(0xFF5CCB8B),
      400: Color(0xFF32BA6C),
      500: Color(_greenPrimaryValue),
      600: Color(0xFF06873D),
      700: Color(0xFF05652E),
      800: Color(0xFF03441E),
      850: Color(0xFF023317),
      900: Color(0xFF02220F),
      950: Color(0xFF011108),
    },
  );

  static const int _greenPrimaryValue = 0xFF08A94C;

  /// Orange Color Swatch
  ///
  /// Example usage:
  /// ```dart
  /// UIColor.orange[400]
  /// ```
  final MaterialColor orange = const MaterialColor(
    _orangePrimaryValue,
    <int, Color>{
      0: Color(0xFFFFFFFF),
      50: Color(0xFFFEF5E8),
      100: Color(0xFFFEEAD2),
      150: Color(0xFFFDE0BB),
      200: Color(0xFFFCD6A5),
      300: Color(0xFFFBC177),
      400: Color(0xFFF9AD4A),
      500: Color(_orangePrimaryValue),
      600: Color(0xFFC67A17),
      700: Color(0xFF955B11),
      800: Color(0xFF633D0C),
      850: Color(0xFF4A2E09),
      900: Color(0xFF321E06),
      950: Color(0xFF190F03),
    },
  );

  static const int _orangePrimaryValue = 0xFFF8981D;

  /// Grey Color Swatch
  ///
  /// Example usage:
  /// ```dart
  /// UIColor.grey[400]
  /// ```
  final MaterialColor grey = const MaterialColor(
    _greyPrimaryValue,
    <int, Color>{
      0: Color(0xFFFFFFFF),
      50: Color(0xFFF2F4F6),
      100: Color(0xFFE5E9EE),
      150: Color(0xFFD8DFE5),
      200: Color(0xFFCBD4DC),
      300: Color(0xFFB2BECB),
      400: Color(0xFF98A9B9),
      500: Color(_greyPrimaryValue),
      600: Color(0xFF657686),
      700: Color(0xFF4C5865),
      800: Color(0xFF323B43),
      850: Color(0xFF262C32),
      900: Color(0xFF191D22),
      950: Color(0xFF0D0F11),
    },
  );

  static const int _greyPrimaryValue = 0xFF7E93A8;

  /// Light Grey Color Swatch
  ///
  /// Example usage:
  /// ```dart
  /// UIColor.lGrey[400]
  /// ```
  final MaterialColor lGrey = const MaterialColor(
    _lGreyPrimaryValue,
    <int, Color>{
      0: Color(0xFFFFFFFF),
      50: Color(0xFFF9FAFB),
      100: Color(0xFFF3F5F6),
      150: Color(0xFFECF0F2),
      200: Color(0xFFE6EBED),
      300: Color(0xFFDAE0E5),
      400: Color(0xFFCDD6DC),
      500: Color(_lGreyPrimaryValue),
      600: Color(0xFFA3AEB5),
      700: Color(0xFF869198),
      800: Color(0xFF68737A),
      850: Color(0xFF59646B),
      900: Color(0xFF4B565D),
      950: Color(0xFF3C474E),
    },
  );

  static const int _lGreyPrimaryValue = 0xFFC1CCD3;

  /// Blue Color Swatch
  ///
  /// Example usage:
  /// ```dart
  /// UIColor.blue[400]
  /// ```
  final MaterialColor blue = const MaterialColor(
    _bluePrimaryValue,
    <int, Color>{
      0: Color(0xFFFFFFFF),
      50: Color(0xFFE6F2FC),
      100: Color(0xFFCDE5F8),
      150: Color(0xFFB4D8F5),
      200: Color(0xFF9BCBF1),
      300: Color(0xFF68B0EB),
      400: Color(0xFF3696E4),
      500: Color(_bluePrimaryValue),
      600: Color(0xFF0363B1),
      700: Color(0xFF024A85),
      800: Color(0xFF023258),
      850: Color(0xFF012542),
      900: Color(0xFF01192C),
      950: Color(0xFF000C16),
    },
  );

  static const int _bluePrimaryValue = 0xFF047CDD;

  /// Yellow Color Swatch
  ///
  /// Example usage:
  /// ```dart
  /// UIColor.yellow[400]
  /// ```
  final MaterialColor yellow = const MaterialColor(
    _yellowPrimaryValue,
    <int, Color>{
      0: Color(0xFFFFFFFF),
      50: Color(0xFFFFFBE6),
      100: Color(0xFFFEF6CD),
      150: Color(0xFFFEF2B4),
      200: Color(0xFFFEED9B),
      300: Color(0xFFFDE569),
      400: Color(0xFFFDDC37),
      500: Color(_yellowPrimaryValue),
      600: Color(0xFFCAA904),
      700: Color(0xFF977F03),
      800: Color(0xFF655402),
      850: Color(0xFF4C3F02),
      900: Color(0xFF322A01),
      950: Color(0xFF191501),
    },
  );

  static const int _yellowPrimaryValue = 0xFFFCD305;

  /// Red Color Swatch
  ///
  /// Example usage:
  /// ```dart
  /// UIColor.red[400]
  /// ```
  final MaterialColor red = const MaterialColor(
    _redPrimaryValue,
    <int, Color>{
      0: Color(0xFFFFFFFF),
      50: Color(0xFFFBEAE9),
      100: Color(0xFFF7D4D4),
      150: Color(0xFFF3BFBE),
      200: Color(0xFFEFA9A8),
      300: Color(0xFFE67F7D),
      400: Color(0xFFDE5451),
      500: Color(_redPrimaryValue),
      600: Color(0xFFAB211E),
      700: Color(0xFF801917),
      800: Color(0xFF56100F),
      850: Color(0xFF400C0B),
      900: Color(0xFF2B0808),
      950: Color(0xFF150404),
    },
  );

  static const int _redPrimaryValue = 0xFFD62926;

  /// Pink Color Swatch
  ///
  /// Example usage:
  /// ```dart
  /// UIColor.pink[400]
  /// ```
  final MaterialColor pink = const MaterialColor(
    _pinkPrimaryValue,
    <int, Color>{
      0: Color(0xFFFFFFFF),
      50: Color(0xFFFAE8F3),
      100: Color(0xFFF5D1E6),
      150: Color(0xFFF0BADA),
      200: Color(0xFFEBA3CD),
      300: Color(0xFFE174B4),
      400: Color(0xFFD7469B),
      500: Color(_pinkPrimaryValue),
      600: Color(0xFFA41368),
      700: Color(0xFF7B0E4E),
      800: Color(0xFF520A34),
      850: Color(0xFF3E0727),
      900: Color(0xFF29051A),
      950: Color(0xFF14020D),
    },
  );

  static const int _pinkPrimaryValue = 0xFFCD1882;

  /// Light Purple Color Swatch
  ///
  /// Example usage:
  /// ```dart
  /// UIColor.lPurple[400]
  /// ```
  final MaterialColor lPurple = const MaterialColor(
    _lPurplePrimaryValue,
    <int, Color>{
      0: Color(0xFFF8DCFD),
      50: Color(0xFFEEC7F5),
      100: Color(0xFFE3B2EC),
      150: Color(0xFFD99CE4),
      200: Color(0xFFCE87DC),
      300: Color(0xFFB95DCB),
      400: Color(0xFFA432BB),
      500: Color(_lPurplePrimaryValue),
      600: Color(0xFF720688),
      700: Color(0xFF560566),
      800: Color(0xFF390344),
      850: Color(0xFF2B0233),
      900: Color(0xFF1D0222),
      950: Color(0xFF0E0111),
    },
  );

  static const int _lPurplePrimaryValue = 0xFF8F08AA;

  /// Purple Color Swatch
  ///
  /// Example usage:
  /// ```dart
  /// UIColor.purple[400]
  /// ```
  final MaterialColor purple = const MaterialColor(
    _purplePrimaryValue,
    <int, Color>{
      0: Color(0xFFFFFFFF),
      50: Color(0xFFF0E7FA),
      100: Color(0xFFE0CEF5),
      150: Color(0xFFD1B6F0),
      200: Color(0xFFC19DEB),
      300: Color(0xFFA36CE0),
      400: Color(0xFF843BD6),
      500: Color(_purplePrimaryValue),
      600: Color(0xFF5108A3),
      700: Color(0xFF3D067A),
      800: Color(0xFF280452),
      850: Color(0xFF1E033D),
      900: Color(0xFF140229),
      950: Color(0xFF0A0114),
    },
  );

  static const int _purplePrimaryValue = 0xFF650ACC;

  /// Tosca Color Swatch
  ///
  /// Example usage:
  /// ```dart
  /// UIColor.tosca[400]
  /// ```
  final MaterialColor tosca = const MaterialColor(
    _toscaPrimaryValue,
    <int, Color>{
      0: Color(0xFFD9F1F6),
      50: Color(0xFFC6E5EB),
      100: Color(0xFFB4D8E0),
      150: Color(0xFFA1CCD5),
      200: Color(0xFF8FBFCA),
      300: Color(0xFF69A6B5),
      400: Color(0xFF448D9F),
      500: Color(_toscaPrimaryValue),
      600: Color(0xFF195D6E),
      700: Color(0xFF134652),
      800: Color(0xFF0C2E37),
      850: Color(0xFF092329),
      900: Color(0xFF06171B),
      950: Color(0xFF030C0E),
    },
  );

  static const int _toscaPrimaryValue = 0xFF1F7489;
}
