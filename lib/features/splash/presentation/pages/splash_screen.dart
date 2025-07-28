import 'package:flights_mojo/features/home/presentation/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../bloc/splash_bloc.dart';

class SplashScreen extends StatefulWidget {
  static const String name = "Splash";

  const SplashScreen({super.key});

  @override
  State<StatefulWidget> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/splash_bg.jpeg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/logo.png", width: 110, height: 110),
              BlocListener<SplashBloc, SplashState>(
                listener: (context, state) {
                  if (state is SplashCompleted) {
                    context.goNamed(HomeScreen.name);
                  }
                },
                child: SizedBox.shrink(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
