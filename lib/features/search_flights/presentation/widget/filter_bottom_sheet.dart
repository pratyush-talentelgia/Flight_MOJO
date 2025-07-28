import 'package:flights_mojo/widgets/common_check_box.dart';
import 'package:flights_mojo/widgets/price_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theme/color_themes.dart';

class FilterBottomSheet extends StatefulWidget {
  const FilterBottomSheet({super.key});

  @override
  State<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  Set<int> selectedIndex = {};
  Set<int> selectedDepartureIndex = {};
  Set<int> selectedAirlineIndex = {};

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.85,
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
                margin: EdgeInsets.only(bottom: 16),
                decoration: BoxDecoration(
                  color: AppColorsTheme.textSecondary,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            Text(
              "Filters",
              style: Theme.of(
                context,
              ).textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 25),
                    Text(
                      "Price Range",
                      style: Theme.of(context).textTheme.headlineSmall
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    PriceSlider(),
                    SizedBox(height: 15),
                    Text(
                      "Stops",
                      style: Theme.of(context).textTheme.headlineSmall
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    CommonCheckboxOption(
                      isSelected: selectedIndex.contains(0),
                      label: "Non stop",
                      selectedIcon: Icons.check_box,
                      unselectedIcon: Icons.check_box_outline_blank,
                      onTap: () {
                        setState(() {
                          if (selectedIndex.contains(0)) {
                            selectedIndex.remove(0);
                          } else {
                            selectedIndex.add(0);
                          }
                        });
                      },
                    ),
                    SizedBox(height: 20),
                    CommonCheckboxOption(
                      isSelected: selectedIndex.contains(1),
                      label: "1 stop",
                      selectedIcon: Icons.check_box,
                      unselectedIcon: Icons.check_box_outline_blank,
                      onTap: () {
                        setState(() {
                          if (selectedIndex.contains(1)) {
                            selectedIndex.remove(1);
                          } else {
                            selectedIndex.add(1);
                          }
                        });
                      },
                    ),
                    SizedBox(height: 20),
                    CommonCheckboxOption(
                      isSelected: selectedIndex.contains(2),
                      label: "2+ stop",
                      selectedIcon: Icons.check_box,
                      unselectedIcon: Icons.check_box_outline_blank,
                      onTap: () {
                        setState(() {
                          if (selectedIndex.contains(2)) {
                            selectedIndex.remove(2);
                          } else {
                            selectedIndex.add(2);
                          }
                        });
                      },
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Departure Time",
                      style: Theme.of(context).textTheme.headlineSmall
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    CommonCheckboxOption(
                      isSelected: selectedDepartureIndex.contains(0),
                      label: "Early Morning",
                      selectedIcon: Icons.check_box,
                      unselectedIcon: Icons.check_box_outline_blank,
                      onTap: () {
                        setState(() {
                          if (selectedDepartureIndex.contains(0)) {
                            selectedDepartureIndex.remove(0);
                          } else {
                            selectedDepartureIndex.add(0);
                          }
                        });
                      },
                      trailing: Text("12:00am - 04:59am"),
                    ),
                    SizedBox(height: 20),
                    CommonCheckboxOption(
                      isSelected: selectedDepartureIndex.contains(1),
                      label: "Morning",
                      selectedIcon: Icons.check_box,
                      unselectedIcon: Icons.check_box_outline_blank,
                      onTap: () {
                        setState(() {
                          if (selectedDepartureIndex.contains(1)) {
                            selectedDepartureIndex.remove(1);
                          } else {
                            selectedDepartureIndex.add(1);
                          }
                        });
                      },
                      trailing: Text("05:00am - 11:59am"),
                    ),
                    SizedBox(height: 20),
                    CommonCheckboxOption(
                      isSelected: selectedDepartureIndex.contains(2),
                      label: "Afternoon",
                      selectedIcon: Icons.check_box,
                      unselectedIcon: Icons.check_box_outline_blank,
                      onTap: () {
                        setState(() {
                          if (selectedDepartureIndex.contains(2)) {
                            selectedDepartureIndex.remove(2);
                          } else {
                            selectedDepartureIndex.add(2);
                          }
                        });
                      },
                      trailing: Text("12:00pm - 05:59pm"),
                    ),
                    SizedBox(height: 20),
                    CommonCheckboxOption(
                      isSelected: selectedDepartureIndex.contains(3),
                      label: "Evening",
                      selectedIcon: Icons.check_box,
                      unselectedIcon: Icons.check_box_outline_blank,
                      onTap: () {
                        setState(() {
                          if (selectedDepartureIndex.contains(3)) {
                            selectedDepartureIndex.remove(3);
                          } else {
                            selectedDepartureIndex.add(3);
                          }
                        });
                      },
                      trailing: Text("06:00pm - 11:59pm"),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Airlines",
                      style: Theme.of(context).textTheme.headlineSmall
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    CommonCheckboxOption(
                      isSelected: selectedAirlineIndex.contains(0),
                      label: "Air India Express",
                      selectedIcon: Icons.check_box,
                      unselectedIcon: Icons.check_box_outline_blank,
                      onTap: () {
                        setState(() {
                          if (selectedAirlineIndex.contains(0)) {
                            selectedAirlineIndex.remove(0);
                          } else {
                            selectedAirlineIndex.add(0);
                          }
                        });
                      },
                      leading: SizedBox(
                        height: 30,
                        width: 30,
                        child: SvgPicture.network(
                          "https://www.flightsmojo.in/images/airlinesSvg/IX.svg",
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    CommonCheckboxOption(
                      isSelected: selectedAirlineIndex.contains(1),
                      label: "Air India",
                      selectedIcon: Icons.check_box,
                      unselectedIcon: Icons.check_box_outline_blank,
                      onTap: () {
                        setState(() {
                          if (selectedAirlineIndex.contains(1)) {
                            selectedAirlineIndex.remove(1);
                          } else {
                            selectedAirlineIndex.add(1);
                          }
                        });
                      },
                      leading: SizedBox(
                        height: 30,
                        width: 30,
                        child: SvgPicture.network(
                          "https://www.flightsmojo.in/images/airlinesSvg/AI.svg",
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    CommonCheckboxOption(
                      isSelected: selectedAirlineIndex.contains(2),
                      label: "Indigo",
                      selectedIcon: Icons.check_box,
                      unselectedIcon: Icons.check_box_outline_blank,
                      onTap: () {
                        setState(() {
                          if (selectedAirlineIndex.contains(2)) {
                            selectedAirlineIndex.remove(2);
                          } else {
                            selectedAirlineIndex.add(2);
                          }
                        });
                      },
                      leading: SizedBox(
                        height: 30,
                        width: 30,
                        child: SvgPicture.network(
                          "https://www.flightsmojo.in/images/airlinesSvg/6E.svg",
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    CommonCheckboxOption(
                      isSelected: selectedAirlineIndex.contains(3),
                      label: "Akasa Air",
                      selectedIcon: Icons.check_box,
                      unselectedIcon: Icons.check_box_outline_blank,
                      onTap: () {
                        setState(() {
                          if (selectedAirlineIndex.contains(3)) {
                            selectedAirlineIndex.remove(3);
                          } else {
                            selectedAirlineIndex.add(3);
                          }
                        });
                      },
                      leading: SizedBox(
                        height: 30,
                        width: 30,
                        child: SvgPicture.network(
                          "https://www.flightsmojo.in/images/airlinesSvg/QP.svg",
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    CommonCheckboxOption(
                      isSelected: selectedAirlineIndex.contains(4),
                      label: "SpiceJet",
                      selectedIcon: Icons.check_box,
                      unselectedIcon: Icons.check_box_outline_blank,
                      onTap: () {
                        setState(() {
                          if (selectedAirlineIndex.contains(4)) {
                            selectedAirlineIndex.remove(4);
                          } else {
                            selectedAirlineIndex.add(4);
                          }
                        });
                      },
                      leading: SizedBox(
                        height: 30,
                        width: 30,
                        child: SvgPicture.network(
                          "https://www.flightsmojo.in/images/airlinesSvg/SG.svg",
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                  ],
                ),
              ),
            ),
            Divider(),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: ElevatedButton(
                onPressed: () {
                  context.pop();
                },
                child: Text("Apply"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
