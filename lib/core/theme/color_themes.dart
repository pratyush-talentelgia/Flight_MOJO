import 'package:flutter/material.dart';

class AppColorsTheme {
  static const Color primary = Colors.deepOrange;
  static const Color secondary = Color(0xFFEF4222);
  static const Color background = Colors.white;
  static const Color textPrimary = Colors.black;
  static const Color textSecondary = Colors.grey;

  static final ColorScheme lightColorScheme = ColorScheme.fromSwatch(
    primarySwatch: Colors.deepOrange,
    brightness: Brightness.light,
    backgroundColor: background,
  ).copyWith(
    primary: primary,
    onPrimary: Colors.white,
    secondary: secondary,
    onSecondary: Colors.white,
    error: Colors.red,
    onError: Colors.white,
    surface: Colors.white,
    onSurface: textPrimary,
  );
}