import 'package:flutter/material.dart';
import 'color_themes.dart';

class AppInputDecorationTheme {
  static final inputDecorationTheme = InputDecorationTheme(
    filled: true,
    fillColor: AppColorsTheme.background,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: AppColorsTheme.primary, width: 1.5),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: AppColorsTheme.textSecondary, width: 1.5),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: AppColorsTheme.primary, width: 2),
    ),
    prefixIconColor: AppColorsTheme.primary,
    suffixIconColor: AppColorsTheme.primary,
    labelStyle: TextStyle(
      fontFamily: 'Roboto',
      color: AppColorsTheme.textSecondary,
      fontWeight: FontWeight.w400,
      fontSize: 14,
    ),
    hintStyle: TextStyle(
      fontFamily: 'Roboto',
      color: AppColorsTheme.textSecondary,
      fontWeight: FontWeight.w400,
      fontSize: 14,
    ),
    contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
  );

  static InputDecoration getInputDecoration({
    String? hintText,
    Widget? prefixIcon,
    Widget? suffixIcon,
  }) {
    return InputDecoration(
      hintText: hintText,
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      filled: inputDecorationTheme.filled,
      fillColor: inputDecorationTheme.fillColor,
      border: inputDecorationTheme.border,
      enabledBorder: inputDecorationTheme.enabledBorder,
      focusedBorder: inputDecorationTheme.focusedBorder,
      hintStyle: inputDecorationTheme.hintStyle,
      contentPadding: inputDecorationTheme.contentPadding,
    );
  }
}