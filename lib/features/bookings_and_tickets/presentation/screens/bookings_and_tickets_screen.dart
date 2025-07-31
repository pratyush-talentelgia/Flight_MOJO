import 'package:flutter/material.dart';

import '../../../../widgets/common_tab_bar.dart';
import '../widget/completed_tab_view.dart';
import '../widget/upcoming_tab_view.dart';

class BookingsAndTicketsScreen extends StatefulWidget {
  const BookingsAndTicketsScreen({super.key});

  @override
  State<BookingsAndTicketsScreen> createState() =>
      _BookingsAndTicketsScreenState();
}

class _BookingsAndTicketsScreenState extends State<BookingsAndTicketsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text(
          "My Bookings",
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: CommonTabBar(
            tabs: [
              Tab(
                child: Text(
                  'Upcoming',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
              Tab(
                child: Text(
                  'Completed',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
            ],
            tabViews: [UpcomingTabView(),CompletedTabView()]
          ),
        ),
      ),)
    );
  }
}
