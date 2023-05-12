import 'package:delivery_backoffice/src/core/ui/styles/app_styles.dart';
import 'package:delivery_backoffice/src/core/ui/styles/colors_app.dart';
import 'package:delivery_backoffice/src/core/ui/styles/text_styles.dart';
import 'package:flutter/material.dart';

class ThemeConfig {
  ThemeConfig._();
  static final _deafultInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(7),
    borderSide: BorderSide(
      color: Colors.grey.shade400,
    ),
  );

  static final theme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      elevation: 0,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: ColorsApp.instance.primary,
      primary: ColorsApp.instance.primary,
      secondary: ColorsApp.instance.secondary,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: AppStyles.instance.primaryButton,
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: Colors.white,
      filled: true,
      isDense: true,
      contentPadding: const EdgeInsets.all(20),
      border: _deafultInputBorder,
      enabledBorder: _deafultInputBorder,
      focusedBorder: _deafultInputBorder,
      labelStyle: TextStyles.instance.textRegular.copyWith(
        color: Colors.grey.shade400,
      ),
      errorStyle: TextStyles.instance.textRegular.copyWith(
        color: Colors.redAccent,
      ),
    ),
  );
}
