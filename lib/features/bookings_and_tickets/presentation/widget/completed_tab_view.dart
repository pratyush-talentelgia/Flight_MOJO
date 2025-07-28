import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:remixicon/remixicon.dart';

class CompletedTabView extends StatefulWidget {
  const CompletedTabView({super.key});

  @override
  State<CompletedTabView> createState() => _CompletedTabViewState();
}

class _CompletedTabViewState extends State<CompletedTabView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
          children: [
            Card(
              elevation: 5,
              child: Padding(
                padding: EdgeInsets.all(5),
                child: ExpansionTile(
                  title: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Air India Express",
                      style: Theme.of(
                        context,
                      ).textTheme.headlineLarge?.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  subtitle: Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Bhubaneswar",
                          style: Theme.of(context).textTheme.bodyLarge
                              ?.copyWith(color: Colors.grey[700]),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          size: 20,
                          color: Colors.grey[700],
                        ),
                        Text(
                          "Delhi",
                          style: Theme.of(context).textTheme.bodyLarge
                              ?.copyWith(color: Colors.grey[700]),
                        ),
                      ],
                    ),
                  ),
                  leading: SizedBox(
                    height: 50,
                    width: 50,
                    child: SvgPicture.network(
                      "https://www.flightsmojo.in/images/airlinesSvg/IX.svg",
                    ),
                  ),
                  children: [
                    ListTile(
                      title: Text(
                        "Schedule",
                        style: Theme.of(
                          context,
                        ).textTheme.headlineSmall,
                      ),
                      subtitle: Text("10Sep 2025"),
                      leading: Icon(
                        Icons.calendar_month_outlined,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Departure Time",
                        style: Theme.of(
                          context,
                        ).textTheme.headlineSmall,
                      ),
                      subtitle: Text("07:00 AM"),
                      leading: Icon(
                        Icons.flight_takeoff,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Arrival Time",
                        style: Theme.of(
                          context,
                        ).textTheme.headlineSmall,
                      ),
                      subtitle: Text("19:00 AM"),
                      leading: Icon(
                        Icons.flight_land,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Duration",
                        style: Theme.of(
                          context,
                        ).textTheme.headlineSmall,
                      ),
                      subtitle: Text("2hr"),
                      leading: Icon(
                        Icons.timer,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Fare",
                        style: Theme.of(
                          context,
                        ).textTheme.headlineSmall,
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
