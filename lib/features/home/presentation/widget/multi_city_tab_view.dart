import 'package:flights_mojo/core/extension/screen_size.dart';
import 'package:flights_mojo/features/home/presentation/widget/passenger_bottom_sheet.dart';
import 'package:flights_mojo/widgets/common_bottom_sheet.dart';
import 'package:flights_mojo/widgets/tappable_field.dart';
import 'package:flutter/material.dart';
import 'package:flights_mojo/features/home/presentation/widget/location_bottom_sheet.dart';
import 'package:go_router/go_router.dart';
import '../../../search_flights/presentation/screens/search_flights_screen.dart';
import 'date_picker_field.dart';

class MultiCityTabView extends StatefulWidget {
  final List<Map<String, dynamic>> flightSegments;
  final Function(int) onRemoveFlightSegment;
  final Function() onAddFlightSegment;

  const MultiCityTabView({
    super.key,
    required this.flightSegments,
    required this.onRemoveFlightSegment,
    required this.onAddFlightSegment,
  });

  @override
  State<MultiCityTabView> createState() => _MultiCityTabViewState();
}

class _MultiCityTabViewState extends State<MultiCityTabView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const ClampingScrollPhysics(),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...widget.flightSegments.asMap().entries.map((entry) {
              int index = entry.key;
              var segment = entry.value;
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Flight ${index + 1}',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      if (widget.flightSegments.length > 1)
                        IconButton(
                          icon: const Icon(
                            Icons.remove_circle,
                            color: Colors.red,
                          ),
                          onPressed: () => widget.onRemoveFlightSegment(index),
                        ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'From',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 8),
                  TappableField(
                    hintText: segment['fromController'].text.isEmpty
                        ? 'Origin'
                        : segment['fromController'].text,
                    iconData: Icons.flight_takeoff,
                    onTap: () {
                      showCommonBottomSheet(
                        context: context,
                        topRadius: 0,
                        child: LocationBottomSheet(title: "Flying From"),
                      );
                    },
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'To',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 8),
                  TappableField(
                    hintText: segment['fromController'].text.isEmpty
                        ? 'Destination'
                        : segment['toController'].text,
                    iconData: Icons.flight_land,
                    onTap: () {
                      showCommonBottomSheet(
                        context: context,
                        topRadius: 0,
                        child: LocationBottomSheet(title: "Flying To"),
                      );
                    },
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Depart',
                    style: TextStyle(
                      fontSize: context.scaleFont(14),
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: context.screenHeight*0.01),
                  DatePickerField(
                    selectedDate: segment['departDate'],
                    isEnabled: true,
                    onDateSelected: (date) => setState(() {
                      segment['departDate'] = date;
                    }),
                  ),
                  const SizedBox(height: 16),
                ],
              );
            }),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton.icon(
                onPressed: widget.onAddFlightSegment,
                icon: const Icon(Icons.add, color: Colors.deepOrange),
                label: const Text(
                  'Add Another Flight',
                  style: TextStyle(color: Colors.deepOrange),
                ),
              ),
            ),

            const SizedBox(height: 10),
            const Text(
              'Passengers',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 8),
            TappableField(
              hintText: 'Travellers and Class',
              iconData: Icons.person,
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  backgroundColor: Colors.white,
                  isScrollControlled: true,
                  shape:  RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(0),
                    ),
                  ),
                  builder: (context) => PassengerBottomSheet(),
                );
              },
            ),
            const SizedBox(height: 32),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: ElevatedButton(
                style: Theme.of(context).elevatedButtonTheme.style,
                onPressed: () {
                  context.pushNamed(SearchFlightsScreen.name);
                },
                child: const Text(
                  'Search Flights',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
    );
  }
}