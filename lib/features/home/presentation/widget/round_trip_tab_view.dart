import 'package:flights_mojo/features/home/presentation/widget/passenger_bottom_sheet.dart';
import 'package:flights_mojo/widgets/common_bottom_sheet.dart';
import 'package:flights_mojo/widgets/tappable_field.dart';
import 'package:flutter/material.dart';
import 'package:flights_mojo/features/home/presentation/widget/location_bottom_sheet.dart';
import 'package:go_router/go_router.dart';
import '../../../search_flights/presentation/screens/search_flights_screen.dart';
import 'date_picker_field.dart';

class RoundTripTabView extends StatefulWidget {
  final Map<String, dynamic> flightSegment;
  final Function(DateTime?) onDepartDateSelected;
  final DateTime? returnDate;
  final Function(DateTime?) onReturnDateSelected;

  const RoundTripTabView({
    super.key,
    required this.flightSegment,
    required this.onDepartDateSelected,
    required this.returnDate,
    required this.onReturnDateSelected,
  });

  @override
  State<RoundTripTabView> createState() => _RoundTripTabViewState();
}

class _RoundTripTabViewState extends State<RoundTripTabView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
        const SizedBox(height: 10),
        Row(
          children: [
            Expanded(
              child: DatePickerField(
                label: 'Depart',
                selectedDate: widget.flightSegment['departDate'],
                isEnabled: true,
                onDateSelected: widget.onDepartDateSelected,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: DatePickerField(
                label: 'Return',
                selectedDate: widget.returnDate,
                isEnabled: true,
                onDateSelected: widget.onReturnDateSelected,
              ),
            ),
          ],
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
    );
  }
}