import 'package:flutter/material.dart';

Future<T?> showCommonBottomSheet<T>({
  required BuildContext context,
  required Widget child,
  double topRadius = 16.0,
  bool isDismissible = true,
  bool enableDrag = true,
  double? elevation,
  Color backgroundColor = Colors.white,
}) {
  return showModalBottomSheet<T>(
    context: context,
    isDismissible: isDismissible,
    enableDrag: enableDrag,
    elevation: elevation,
    backgroundColor: backgroundColor,
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(topRadius),
      ),
    ),
    builder: (context) => child,
  );
}