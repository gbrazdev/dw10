import 'package:flutter/material.dart';

class TextStyles {
  static TextStyles? _instance;
  // Avoid self isntance
  TextStyles._();
  static TextStyles get instance {
    _instance ??= TextStyles._();
    return _instance!;
  }

  String get fontFamily => 'mplus1';

  TextStyle get textLight => TextStyle(
        fontFamily: fontFamily,
        fontWeight: FontWeight.w300,
      );

  TextStyle get textRegular => TextStyle(
        fontFamily: fontFamily,
        fontWeight: FontWeight.normal,
      );

  TextStyle get textMedium => TextStyle(
        fontFamily: fontFamily,
        fontWeight: FontWeight.w500,
      );

  TextStyle get textBold => TextStyle(
        fontFamily: fontFamily,
        fontWeight: FontWeight.w600,
      );

  TextStyle get textExtraBold => TextStyle(
        fontFamily: fontFamily,
        fontWeight: FontWeight.bold,
      );

  TextStyle get textButtonLabel => textBold.copyWith(
        fontSize: 16,
      );

  TextStyle get textTitle => textExtraBold.copyWith(
        fontSize: 22,
      );
}

extension TextStylesExtensions on BuildContext {
  TextStyles get textStyles => TextStyles.instance;
}
