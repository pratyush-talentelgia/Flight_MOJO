import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flights_mojo/core/theme/color_themes.dart';
import 'package:flights_mojo/core/theme/text_theme.dart';

class DatePickerField extends StatelessWidget {
  final DateTime? selectedDate;
  final bool isEnabled;
  final Function(DateTime) onDateSelected;

  const DatePickerField({
    super.key,
    required this.selectedDate,
    required this.isEnabled,
    required this.onDateSelected,
  });

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 365)),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: AppColorsTheme.lightColorScheme,
          ),
          child: child!,
        );
      },
    );

    if (picked != null) {
      onDateSelected(picked);
    }
  }

  @override
  Widget build(BuildContext context) {
    return
        GestureDetector(
          onTap: isEnabled ? () => _selectDate(context) : null,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            decoration: BoxDecoration(
              color: isEnabled
                  ? AppColorsTheme.background
                  : AppColorsTheme.textSecondary.withOpacity(0.2),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: AppColorsTheme.textSecondary),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.calendar_today,
                  size: 20,
                  color: isEnabled
                      ? AppColorsTheme.primary
                      : AppColorsTheme.textSecondary,
                ),
                const SizedBox(width: 5),
                Text(
                  selectedDate != null
                      ? DateFormat('MMM dd, yyyy').format(selectedDate!)
                      : 'Select date',
                  style: AppTextTheme.lightTextTheme.bodyMedium?.copyWith(
                    color: isEnabled
                        ? (selectedDate != null
                        ? AppColorsTheme.textPrimary
                        : AppColorsTheme.textSecondary)
                        : AppColorsTheme.textSecondary,
                  ),
                ),

              ],
            ),
          ),
    );
  }
}