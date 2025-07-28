import 'package:flutter/material.dart';

class TappableField extends StatelessWidget {
  final String hintText;
  final IconData iconData;
  final Color iconColor;
  final VoidCallback? onTap;

  const TappableField({
    super.key,
    required this.hintText,
    required this.iconData,
    this.iconColor = Colors.deepOrange,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey),
        ),
        child: Row(
          children: [
            Icon(
              iconData,
              size: 20,
              color: iconColor,
            ),
            const SizedBox(width: 12),
            Text(hintText,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
