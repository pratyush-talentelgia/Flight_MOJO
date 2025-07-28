import 'package:flutter/material.dart';

class CommonCheckboxOption extends StatelessWidget {
  final bool isSelected;
  final String label;
  final VoidCallback onTap;
  final Widget? trailing;
  final Widget? leading;
  final IconData? selectedIcon;
  final IconData? unselectedIcon;

  const CommonCheckboxOption({
    super.key,
    required this.isSelected,
    required this.label,
    required this.onTap,
    this.leading,
    this.trailing,
    this.selectedIcon,
    this.unselectedIcon,
  });

  @override
  Widget build(BuildContext context) {
    final IconData effectiveSelectedIcon = selectedIcon ?? Icons.check_circle;
    final IconData effectiveUnselectedIcon = unselectedIcon ?? Icons.circle_outlined;

    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Icon(
            isSelected ? effectiveSelectedIcon : effectiveUnselectedIcon,
            color: isSelected
                ? Theme.of(context).colorScheme.primary
                : Colors.grey,
          ),
          const SizedBox(width: 10),
          if (leading != null) ...[
            const SizedBox(width: 8),
            leading!,
          ],
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              label,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          if (trailing != null) ...[
            const SizedBox(width: 8),
            trailing!,
          ]
        ],
      ),
    );
  }
}
