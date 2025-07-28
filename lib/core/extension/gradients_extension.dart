import 'package:flutter/material.dart';

extension GradientExtension on ThemeData {
  LinearGradient get primaryGradient => const LinearGradient(
    colors: [
      Color(0xFFE93E19),
      Color(0xFFEE5E14),
      Color(0xFFF17A0C),
    ],
  );
}