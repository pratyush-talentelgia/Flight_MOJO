import 'package:flights_mojo/core/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'color_themes.dart';
import 'button_theme.dart';
import 'input_decoration_theme.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    primaryColor: AppColorsTheme.primary,
    scaffoldBackgroundColor: AppColorsTheme.background,
    colorScheme: AppColorsTheme.lightColorScheme,
    inputDecorationTheme: AppInputDecorationTheme.inputDecorationTheme,
    elevatedButtonTheme: AppButtonTheme.elevatedButtonTheme,
    outlinedButtonTheme: AppButtonTheme.outlinedButtonTheme,
    textTheme: AppTextTheme.lightTextTheme,
    fontFamily: 'Roboto',
  );

}