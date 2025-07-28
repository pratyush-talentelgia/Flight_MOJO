import 'package:flutter/material.dart';

class TappableFilters extends StatefulWidget {
  final String filterText;
  final IconData? iconData;
  final Color iconColor;
  final VoidCallback? onTap;
  final bool selectable;

  const TappableFilters({
    super.key,
    required this.filterText,
    this.iconData,
    this.iconColor = Colors.deepOrange,
    this.onTap,
    this.selectable = false,
  });

  @override
  State<TappableFilters> createState() => _TappableFiltersState();
}

class _TappableFiltersState extends State<TappableFilters> {
  bool isSelected = false;

  void _handleTap() {
    if (widget.selectable) {
      setState(() {
        isSelected = !isSelected;
      });
    }

    if (widget.onTap != null) {
      widget.onTap!();
    }
  }

  @override
  Widget build(BuildContext context) {
    final borderColor = widget.selectable && isSelected
        ? Colors.deepOrange
        : Colors.grey.shade300;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: GestureDetector(
        onTap: _handleTap,
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: borderColor,
              width: 2,
            ),
          ),
          child: Row(
            children: [
              if (widget.iconData != null)
                Icon(widget.iconData, size: 20, color: widget.iconColor),
              if (widget.iconData != null) const SizedBox(width: 12),
              Text(
                widget.filterText,
                style: const TextStyle(fontSize: 14, color: Colors.black,fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
