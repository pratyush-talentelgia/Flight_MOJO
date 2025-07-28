import 'package:flights_mojo/widgets/common_tab_bar.dart';
import 'package:flutter/material.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  @override
  Widget build(BuildContext context) {
    return CommonTabBar(
      tabs: const [
        Tab(text: 'Home'),
        Tab(text: 'Explore'),
        Tab(text: 'Profile'),
      ],
      tabViews: const [
        Center(child: Text("Home View")),
        Center(child: Text("Explore View")),
        Center(child: Text("Profile View")),
      ],
    );
  }
}
