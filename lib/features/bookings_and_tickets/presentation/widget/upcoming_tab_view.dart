import 'dart:math';

import 'package:flights_mojo/widgets/tappable_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:remixicon/remixicon.dart';

class UpcomingTabView extends StatefulWidget {
  const UpcomingTabView({super.key});

  @override
  State<UpcomingTabView> createState() => _UpcomingTabViewState();
}

class _UpcomingTabViewState extends State<UpcomingTabView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Card(
            elevation: 5,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: ExpansionTile(
                trailing: SizedBox.shrink(),
                // collapsedBackgroundColor: Theme.of(
                //   context,
                // ).colorScheme.primary.withOpacity(0.1),
                leading: SizedBox(
                  height: 50,
                  width: 50,
                  child: SvgPicture.network(
                    "https://www.flightsmojo.in/images/airlinesSvg/QP.svg",
                  ),
                ),
                title: Center(
                  child: Text(
                    "Air India Express",
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                children: [
                  SizedBox(height: 10),
                  Container(
                    color: Colors.grey[300],
                    height: 2,
                    width: MediaQuery.of(context).size.width * 0.8,
                  ),
                  SizedBox(height: 10),
                  Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Text(
                                "05:50",
                                style: Theme.of(context).textTheme.bodyLarge
                                    ?.copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "DEL",
                                style: Theme.of(context).textTheme.bodyLarge
                                    ?.copyWith(color: Colors.black),
                              ),
                            ],
                          ),
                          Container(color: Colors.grey, width: 120, height: 2),
                          Column(
                            children: [
                              Text(
                                "05:50",
                                style: Theme.of(context).textTheme.bodyLarge
                                    ?.copyWith(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "BOM",
                                style: Theme.of(context).textTheme.bodyLarge
                                    ?.copyWith(color: Colors.black),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Positioned(
                        top: 20,
                        left: 85,
                        child: Icon(
                          Icons.fiber_manual_record,
                          size: 15,
                          color: Colors.grey,
                        ),
                      ),
                      Positioned(
                        top: 20,
                        right: 85,
                        child: Icon(
                          Icons.fiber_manual_record,
                          size: 15,
                          color: Colors.grey,
                        ),
                      ),
                      Positioned(
                        top: 17,
                        right: 0,
                        left: 0,
                        child: Icon(
                          FontAwesomeIcons.plane,
                          size: 20,
                          color: Colors.deepOrange,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        child: Text(
                          "Indira\nGandhi\nInternational\nAirport",
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        child: Text(
                          "Chhatrapati\nShivaj\nMaharaj\nInternational\nAirport",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: TappableField(
                          hintText: "18Jul 2025",
                          iconData: Icons.calendar_month_outlined,
                        ),
                      ),
                      SizedBox(width: 15,),
                      Expanded(
                        child: TappableField(
                          hintText: "09:30AM",
                          iconData: Icons.timer_outlined,
                          onTap: (){},
                        ),
                      ),
                    ],
                  ),
                  ListTile(
                    title: Text(
                      "Fare",
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    subtitle: Text("₹6,999"),
                    leading: Icon(
                      RemixIcons.money_rupee_circle_line,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
