import 'package:flutter/material.dart';
import 'package:flights_mojo/core/theme/color_themes.dart';
import 'package:flights_mojo/core/theme/text_theme.dart';
import 'package:flights_mojo/core/theme/input_decoration_theme.dart';

class LocationBottomSheet extends StatefulWidget {
  final String title;
  const LocationBottomSheet({super.key, required this.title});

  @override
  State<LocationBottomSheet> createState() => _LocationBottomSheetState();
}

class _LocationBottomSheetState extends State<LocationBottomSheet> {
  final TextEditingController _searchController = TextEditingController();
  final List<String> _locations = [
    "Delhi (DEL) - Indira Gandhi International Airport",
    "Mumbai (BOM) - Chhatrapati Shivaji Maharaj International Airport",
    "Bengaluru (BLR) - Kempegowda International Airport",
    "Hyderabad (HYD) - Rajiv Gandhi International Airport",
    "Chennai (MAA) - Chennai International Airport",
    "Kolkata (CCU) - Netaji Subhash Chandra Bose International Airport",
    "Ahmedabad (AMD) - Sardar Vallabhbhai Patel International Airport",
    "Goa (GOI) - Dabolim Airport",
    "Jaipur (JAI) - Jaipur International Airport",
    "Bhubaneswar (BBI) - Biju Patnaik International Airport",
    "Indore (IDR) - Devi Ahilyabai Holkar Airport",
    "Chandigarh (IXC) - Shaheed Bhagat Singh International Airport",
    "Amritsar (ATQ) - Sri Guru Ram Dass Jee International Airport",
  ];

  List<String> _filteredLocations = [];

  @override
  void initState() {
    super.initState();
    _filteredLocations = _locations;
    _searchController.addListener(_onSearchChanged);
  }

  void _onSearchChanged() {
    final query = _searchController.text.toLowerCase();
    setState(() {
      _filteredLocations = _locations
          .where((location) => location.toLowerCase().contains(query))
          .toList();
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.85,
      width: double.maxFinite,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 40,
                height: 4,
                margin: const EdgeInsets.only(bottom: 16),
                decoration: BoxDecoration(
                  color: AppColorsTheme.textSecondary,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            Text(
              widget.title,
              style: AppTextTheme.lightTextTheme.headlineLarge,
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _searchController,
              decoration: AppInputDecorationTheme.getInputDecoration(
                hintText: 'Enter the city or airport',
                prefixIcon: Icon(Icons.search, color: AppColorsTheme.primary),
              ),
            ),
            const SizedBox(height: 24),
            Expanded(
              child: ListView.builder(
                itemCount: _filteredLocations.length,
                itemBuilder: (context, index) {
                  final location = _filteredLocations[index];
                  return ListTile(
                    leading: Icon(Icons.flight, color: AppColorsTheme.primary),
                    title: Text(
                      location,
                      style: AppTextTheme.lightTextTheme.bodyLarge,
                    ),
                    onTap: () {
                      Navigator.pop(context, location);
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}