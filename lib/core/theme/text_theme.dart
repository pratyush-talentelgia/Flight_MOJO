import 'package:flutter/material.dart';
import 'color_themes.dart';

class AppTextTheme {
  static  TextTheme lightTextTheme = TextTheme(
    displayLarge: TextStyle(
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w900, // Black
      fontSize: 34,
      color: AppColorsTheme.textPrimary,
    ),
    displayMedium: TextStyle(
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w700, // Bold
      fontSize: 28,
      color: AppColorsTheme.textPrimary,
    ),
    displaySmall: TextStyle(
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w700, // Bold
      fontSize: 24,
      color: AppColorsTheme.textPrimary,
    ),
    headlineLarge: TextStyle(
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w500, // Medium
      fontSize: 20,
      color: AppColorsTheme.textPrimary,
    ),
    headlineMedium: TextStyle(
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w500, // Medium
      fontSize: 18,
      color: AppColorsTheme.textPrimary,
    ),
    headlineSmall: TextStyle(
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w500, // Medium
      fontSize: 16,
      color: AppColorsTheme.textPrimary,
    ),
    bodyLarge: TextStyle(
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w400, // Regular
      fontSize: 16,
      color: AppColorsTheme.textPrimary,
    ),
    bodyMedium: TextStyle(
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w400, // Regular
      fontSize: 14,
      color: AppColorsTheme.textSecondary,
    ),
    bodySmall: TextStyle(
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w300, // Light
      fontSize: 12,
      color: AppColorsTheme.textSecondary,
    ),
    labelLarge: TextStyle(
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w700, // Bold
      fontSize: 16,
      color: AppColorsTheme.textPrimary,
    ),
    labelMedium: TextStyle(
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w500, // Medium
      fontSize: 14,
      color: AppColorsTheme.textSecondary,
    ),
  );
}