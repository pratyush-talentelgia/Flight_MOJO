import 'package:flights_mojo/features/bookings_and_tickets/presentation/screens/bookings_and_tickets_screen.dart';
import 'package:flights_mojo/features/home/presentation/screens/home_screen.dart';
import 'package:flights_mojo/features/profile/presentation/widget/tab.dart';
import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<StatefulWidget> createState() => DashboardState();
}

class DashboardState extends State<Dashboard> {
  int selectedIndex = 0;

  static const List<Widget> bottomNavItems = [
    HomeScreen(),
    BookingsAndTicketsScreen(),
    Center(child: Text('Offers')),
    Center(child: Text("Profile"),),
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: bottomNavItems[selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Theme.of(context).colorScheme.primary,
        currentIndex: selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black54,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              selectedIndex == 0 ? Icons.home : Icons.home_outlined,
              size: 30,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              selectedIndex == 1
                  ? Icons.airplane_ticket
                  : Icons.airplane_ticket_outlined,
              size: 30,
            ),
            label: "Bookings",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              selectedIndex == 2
                  ? RemixIcons.discount_percent_fill
                  : RemixIcons.discount_percent_line,
              size: 30,
            ),
            label: "Offers",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              selectedIndex == 3
                  ? Icons.account_circle
                  : Icons.account_circle_outlined,
              size: 30,
            ),
            label: "Profile",
          ),

        ],
        onTap: onItemTapped,
      ),
    );
  }
}
