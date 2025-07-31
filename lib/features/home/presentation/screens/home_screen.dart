import 'package:flutter/material.dart';
import 'package:flights_mojo/core/extension/gradients_extension.dart';
import 'package:flights_mojo/core/extension/screen_size.dart';
import 'package:flights_mojo/features/home/presentation/widget/flight_form.dart';

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
          decoration: const BoxDecoration(
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
                    height: context.screenHeight * 0.25,
                    decoration: BoxDecoration(
                      gradient: gradient,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 0,
                right: 0,
                child: SizedBox(
                  height: context.screenHeight * 0.20,
                  child: Image.asset("assets/images/map.png"),
                ),
              ),
              Positioned(
                top: 10,
                left: 20,
                child: Text(
                  "Book Yours\nFlight",
                  style: Theme.of(context).textTheme.displayLarge?.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                    fontSize: context.scaleFont(40),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: context.screenWidth * 0.025),
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      return Container(
                        height: constraints.maxHeight * 0.80,
                        child: const FlightForm(),
                      );
                    },
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
