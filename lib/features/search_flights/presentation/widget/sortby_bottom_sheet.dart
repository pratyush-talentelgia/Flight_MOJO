import 'package:flights_mojo/widgets/common_check_box.dart';
import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';

import '../../../../core/theme/color_themes.dart';

class SortByBottomSheet extends StatefulWidget {
  const SortByBottomSheet({super.key});

  @override
  State<StatefulWidget> createState() => SortByBottomSheetState();
}

class SortByBottomSheetState extends State<SortByBottomSheet> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.30,
      width: double.maxFinite,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 40,
                height: 4,
                margin: const EdgeInsets.only(bottom: 16),
                decoration: BoxDecoration(
                  color: AppColorsTheme.textSecondary,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            Text(
              "Sort by",
              style: Theme.of(
                context,
              ).textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            CommonCheckboxOption(
              isSelected: selectedIndex == 0,
              label: "Price (Low to High)",
              onTap: () {
                setState(() {
                  selectedIndex = 0;
                });
              },
              selectedIcon: Icons.trip_origin,
            ),
            SizedBox(height: 15),
            CommonCheckboxOption(
              isSelected: selectedIndex == 1,
              label: "Early Departure",
              onTap: () {
                setState(() {
                  selectedIndex = 1;
                });
              },
              selectedIcon: Icons.trip_origin,
            ),
            SizedBox(height: 15),
            CommonCheckboxOption(
              isSelected: selectedIndex == 2,
              label: "Late Departure",
              onTap: () {
                setState(() {
                  selectedIndex = 2;
                });
              },
              selectedIcon: Icons.trip_origin,
            ),
            // GestureDetector(
            //   onTap: () {
            //     setState(() {
            //       selectedIndex = 0;
            //     });
            //   },
            //   child: Row(
            //     children: [
            //       Icon(
            //         selectedIndex == 0
            //             ? Icons.trip_origin
            //             : RemixIcons.circle_line,
            //         color: selectedIndex == 0
            //             ? Theme.of(context).colorScheme.primary
            //             : Colors.grey,
            //       ),
            //       SizedBox(width: 10),
            //       Text(
            //         "Price (Low to High)",
            //         style: Theme.of(context).textTheme.bodyLarge,
            //       ),
            //     ],
            //   ),
            // ),
            // SizedBox(height: 15),
            // GestureDetector(
            //   onTap: () {
            //     setState(() {
            //       selectedIndex = 1;
            //     });
            //   },
            //   child: Row(
            //     children: [
            //       Icon(
            //         selectedIndex == 1
            //             ? Icons.trip_origin
            //             : RemixIcons.circle_line,
            //         color: selectedIndex == 1
            //             ? Theme.of(context).colorScheme.primary
            //             : Colors.grey,
            //       ),
            //       SizedBox(width: 10),
            //       Text(
            //         "Early Departure",
            //         style: Theme.of(context).textTheme.bodyLarge,
            //       ),
            //     ],
            //   ),
            // ),
            // SizedBox(height: 15),
            // GestureDetector(
            //   onTap: () {
            //     setState(() {
            //       selectedIndex = 2;
            //     });
            //   },
            //   child: Row(
            //     children: [
            //       Icon(
            //         selectedIndex == 2
            //             ? Icons.trip_origin
            //             : RemixIcons.circle_line,
            //         color: selectedIndex == 2
            //             ? Theme.of(context).colorScheme.primary
            //             : Colors.grey,
            //       ),
            //       SizedBox(width: 10),
            //       Text(
            //         "Late Departure",
            //         style: Theme.of(context).textTheme.bodyLarge,
            //       ),
            //     ],
            //   ),
            // ),
            // SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
