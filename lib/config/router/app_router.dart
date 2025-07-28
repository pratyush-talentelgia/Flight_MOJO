import 'package:flights_mojo/features/home/presentation/screens/dashboard.dart';
import 'package:flights_mojo/features/home/presentation/screens/home_screen.dart';
import 'package:flights_mojo/features/search_flights/presentation/screens/search_flights_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:flights_mojo/features/splash/presentation/pages/splash_screen.dart';

import '../../features/splash/presentation/bloc/splash_bloc.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: "/splash",
    routes: [
      GoRoute(
        path: "/splash",
        name: SplashScreen.name,
        builder: (context, state) {
          return BlocProvider(
            create: (context) => SplashBloc()..add(SplashStarted()),
            child: const SplashScreen(),
          );
        },
      ),
      GoRoute(
        path: "/home",
        name: HomeScreen.name,
        builder: (context, state) => Dashboard(),
      ),
      GoRoute(
        path: "/flights",
        name: SearchFlightsScreen.name,
        builder: (context, state) => SearchFlightsScreen(),
      ),
    ],
  );
}
