import 'package:flutter/material.dart';

extension ScreenSize on BuildContext {
  double get screenHeight => MediaQuery.of(this).size.height;
  double get screenWidth => MediaQuery.of(this).size.width;
  double scaleFont(double baseSize) => MediaQuery.textScalerOf(this).scale(baseSize);
}
