import 'package:flutter/material.dart';
import '../../../../widgets/common_tab_bar.dart';
import 'one_way_tab_view.dart';
import 'round_trip_tab_view.dart';
import 'multi_city_tab_view.dart';

class FlightForm extends StatefulWidget {
  const FlightForm({super.key});

  @override
  State<FlightForm> createState() => _FlightFormState();
}

class _FlightFormState extends State<FlightForm> {
  final List<Map<String, dynamic>> _flightSegments = [
    {
      'fromController': TextEditingController(),
      'toController': TextEditingController(),
      'departDate': null as DateTime?,
    },
  ];
  final TextEditingController passengersController = TextEditingController();
  DateTime? returnDate;

  @override
  void dispose() {
    for (var segment in _flightSegments) {
      segment['fromController'].dispose();
      segment['toController'].dispose();
    }
    passengersController.dispose();
    super.dispose();
  }

  void _addFlightSegment() {
    setState(() {
      _flightSegments.add({
        'fromController': TextEditingController(),
        'toController': TextEditingController(),
        'departDate': null,
      });
    });
  }

  void _removeFlightSegment(int index) {
    if (_flightSegments.length > 1) {
      setState(() {
        _flightSegments[index]['fromController'].dispose();
        _flightSegments[index]['toController'].dispose();
        _flightSegments.removeAt(index);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 7,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Flexible(
              child: CommonTabBar(
                tabs: const [
                  Tab(child: Text('One Way', style: TextStyle(fontWeight: FontWeight.w600))),
                  Tab(child: Text('Round Trip', style: TextStyle(fontWeight: FontWeight.w600))),
                  Tab(child: Text('Multi City', style: TextStyle(fontWeight: FontWeight.w600))),
                ],
                tabViews: [
                  OneWayTabView(
                    flightSegment: _flightSegments[0],
                    onDepartDateSelected: (date) => setState(() {
                      _flightSegments[0]['departDate'] = date;
                    }),
                  ),
                  RoundTripTabView(
                    flightSegment: _flightSegments[0],
                    onDepartDateSelected: (date) => setState(() {
                      _flightSegments[0]['departDate'] = date;
                    }),
                    returnDate: returnDate,
                    onReturnDateSelected: (date) => setState(() {
                      returnDate = date;
                    }),
                  ),
                  MultiCityTabView(
                    flightSegments: _flightSegments,
                    onRemoveFlightSegment: _removeFlightSegment,
                    onAddFlightSegment: _addFlightSegment,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
