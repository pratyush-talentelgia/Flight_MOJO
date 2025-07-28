import 'package:flights_mojo/core/extension/gradients_extension.dart';
import 'package:flights_mojo/features/home/presentation/widget/flight_form.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String name = "Home";

  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final gradient = Theme.of(context).primaryGradient;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
          ),
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.20,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                      ),
                      gradient: gradient,
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 0,
                right: 0,
                child: Center(
                  child: SizedBox(child: Image.asset("assets/images/map.png")),
                ),
              ),
              // Positioned(
              //   top: 5,
              //   right: 0,
              //   left: 170,
              //   child: Center(
              //     child: SizedBox(
              //       child: Image.asset("assets/images/flight_point.png"),
              //     ),
              //   ),
              // ),
              Positioned(
                top: 10,
                left: 20,
                child: Center(
                  child: Text(
                      "Book Yours\nFlight",
                      style: Theme.of(context).textTheme.displayLarge?.copyWith(
                          color: Theme.of(context).colorScheme.onPrimary
                      )
                  ),
                ),
              ),
              Positioned(
                bottom: -80,
                top: 0,
                right: 0,
                left: 0,
                child: Center(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.72,
                    width: MediaQuery.of(context).size.width * 0.95,
                    child: SingleChildScrollView(
                      child: FlightForm(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
