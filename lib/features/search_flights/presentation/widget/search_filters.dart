import 'package:flights_mojo/features/search_flights/presentation/widget/filter_bottom_sheet.dart';
import 'package:flights_mojo/features/search_flights/presentation/widget/sortby_bottom_sheet.dart';
import 'package:flights_mojo/widgets/common_bottom_sheet.dart';
import 'package:flights_mojo/widgets/tappable_filters.dart';
import 'package:flutter/material.dart';
import 'package:remixicon/remixicon.dart';

class SearchFilters extends StatefulWidget {
  const SearchFilters({super.key});

  @override
  State<StatefulWidget> createState() => SearchFiltersState();
}

class SearchFiltersState extends State<SearchFilters> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TappableFilters(
          filterText: "SortBy",
          iconData: RemixIcons.filter_3_line,
          onTap: () {
            showCommonBottomSheet(
              context: context,
              topRadius: 10,
              child: SortByBottomSheet(),
            );
          },
        ),
        TappableFilters(
          filterText: "Filter",
          iconData: RemixIcons.equalizer_line,
          onTap: () {
            showCommonBottomSheet(
              context: context,
              topRadius: 10,
              child: FilterBottomSheet(),
            );
          },
        ),
        TappableFilters(filterText: "Non-stop",selectable: true, onTap: () {}),
        TappableFilters(filterText: "1 stop", selectable: true,onTap: () {}),
        TappableFilters(filterText: "Late Departure",selectable: true, onTap: () {}),
      ],
    );
  }
}
