import 'package:flights_mojo/widgets/tappable_field.dart';
import 'package:flights_mojo/features/search_flights/presentation/widget/search_filters.dart';
import 'package:flights_mojo/widgets/tappable_filters.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:remixicon/remixicon.dart';

class SearchFlightsScreen extends StatefulWidget {
  static const String name = "Flights";

  const SearchFlightsScreen({super.key});

  @override
  State<StatefulWidget> createState() => SearchFlightsScreenState();
}

class SearchFlightsScreenState extends State<SearchFlightsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.deepOrange,
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () => context.pop(),
                  ),
                  SizedBox(width: 10),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Delhi",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              child: Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                                size: 18,
                              ),
                            ),
                            Text(
                              "Mumbai",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "15 Jul, 2025 • 1 Passenger",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                color: Colors.grey[100],
                height: 55,
                child: SearchFilters(),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 8,
                padding: EdgeInsets.all(5),
                itemBuilder: (context, index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    margin: EdgeInsets.only(bottom: 5),
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Row(
                        children: [
                          SizedBox(
                            height: 50,
                            width: 50,
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              child: SvgPicture.network(
                                "https://www.flightsmojo.in/images/airlinesSvg/AI.svg",
                              ),
                            ),
                          ),
                          SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Air India • A1-202",
                                  style: Theme.of(
                                    context,
                                  ).textTheme.headlineSmall,
                                ),
                                SizedBox(height: 4),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("10:00 AM"),
                                    Icon(Icons.arrow_forward, size: 16),
                                    Text("12:30 PM"),
                                  ],
                                ),
                                SizedBox(height: 4),
                                Text("Duration: 2h 30m"),
                              ],
                            ),
                          ),
                          SizedBox(width: 12),
                          Text(
                            "₹5,499",
                            style: Theme.of(context).textTheme.headlineMedium
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
