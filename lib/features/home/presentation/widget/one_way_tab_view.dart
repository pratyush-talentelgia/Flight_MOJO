import 'package:flights_mojo/core/extension/screen_size.dart';
import 'package:flights_mojo/features/home/presentation/widget/passenger_bottom_sheet.dart';
import 'package:flights_mojo/widgets/common_bottom_sheet.dart';
import 'package:flights_mojo/widgets/tappable_field.dart';
import 'package:flutter/material.dart';
import 'package:flights_mojo/features/home/presentation/widget/location_bottom_sheet.dart';
import 'package:go_router/go_router.dart';
import '../../../search_flights/presentation/screens/search_flights_screen.dart';
import 'date_picker_field.dart';

class OneWayTabView extends StatefulWidget {
  final Map<String, dynamic> flightSegment;
  final Function(DateTime?) onDepartDateSelected;

  const OneWayTabView({
    super.key,
    required this.flightSegment,
    required this.onDepartDateSelected,
  });

  @override
  State<OneWayTabView> createState() => _OneWayTabViewState();
}

class _OneWayTabViewState extends State<OneWayTabView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'From',
          style: TextStyle(
            fontSize: context.scaleFont(14),
            fontWeight: FontWeight.w500,
            color: Colors.grey,
          ),
        ),
        SizedBox(height: context.screenHeight*0.01),
        TappableField(
          hintText: widget.flightSegment['fromController'].text.isEmpty
              ? 'Origin'
              : widget.flightSegment['fromController'].text,
          iconData: Icons.flight_takeoff,
          onTap: () {
            showCommonBottomSheet(
              context: context,
              topRadius: 0,
              child: LocationBottomSheet(title: "Flying From"),
            );
          },
        ),
        SizedBox(height: context.screenHeight*0.015),
        Text(
          'To',
          style: TextStyle(
            fontSize: context.scaleFont(14),
            fontWeight: FontWeight.w500,
            color: Colors.grey,
          ),
        ),
        SizedBox(height: context.screenHeight*0.01),
        TappableField(
          hintText: widget.flightSegment['toController'].text.isEmpty
              ? 'Destination'
              : widget.flightSegment['toController'].text,
          iconData: Icons.flight_land,
          onTap: () {
            showCommonBottomSheet(
              context: context,
              topRadius: 0,
              child: LocationBottomSheet(title: "Flying To"),
            );
          },
        ),
        SizedBox(height: context.screenHeight*0.015),
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
          selectedDate: widget.flightSegment['departDate'],
          isEnabled: true,
          onDateSelected: widget.onDepartDateSelected,
        ),
        SizedBox(height: context.screenHeight*0.01),
        Text(
          'Passengers',
          style: TextStyle(
            fontSize: context.scaleFont(14),
            fontWeight: FontWeight.w500,
            color: Colors.grey,
          ),
        ),
        SizedBox(height: context.screenHeight*0.01),
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
        SizedBox(height: context.screenHeight*0.03),
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
    );
  }
}