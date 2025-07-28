import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flights_mojo/core/theme/color_themes.dart';
import 'package:flights_mojo/core/theme/text_theme.dart';
import 'package:flights_mojo/core/theme/button_theme.dart';

class PassengerBottomSheet extends StatefulWidget {
  const PassengerBottomSheet({super.key});

  @override
  State<PassengerBottomSheet> createState() => _PassengerBottomSheetState();
}

class _PassengerBottomSheetState extends State<PassengerBottomSheet> {
  String? selectedCabinClass = 'Economy';
  int _adultCount = 1;
  int _childCount = 0;
  int _infantCount = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.85,
      width: double.maxFinite,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 40,
              height: 4,
              margin: const EdgeInsets.only(top: 20,),
              decoration: BoxDecoration(
                color: AppColorsTheme.textSecondary,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(width: 10),
                  IconButton(
                    onPressed: () => context.pop(),
                    icon: Icon(
                      Icons.close,
                      color: AppColorsTheme.textSecondary,size: 30,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'Select Travellers and Class',
                    style: AppTextTheme.lightTextTheme.headlineMedium,
                  ),
                ],
              ),
              Container(
                width: double.maxFinite,
                height: 2,
                decoration: BoxDecoration(
                  color: AppColorsTheme.textSecondary.withOpacity(0.3),
                  boxShadow: [
                    BoxShadow(
                      color: AppColorsTheme.textSecondary.withOpacity(0.3),
                      spreadRadius: 0.8,
                      blurRadius: 1,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    Text(
                      "ADD NUMBER OF TRAVELLERS",
                      style: AppTextTheme.lightTextTheme.labelMedium?.copyWith(
                        color: AppColorsTheme.textSecondary,
                      ),
                    ),
                    const SizedBox(height: 10),
                    ListTile(
                      title: Text(
                        "Adult",
                        style: AppTextTheme.lightTextTheme.headlineMedium,
                      ),
                      subtitle: Text(
                        "11 yrs & above",
                        style: AppTextTheme.lightTextTheme.bodyMedium,
                      ),
                      trailing: SizedBox(
                        height: 50,
                        width: 120,
                        child: Card(
                          color: AppColorsTheme.background,
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              IconButton(
                                onPressed: _adultCount > 1
                                    ? () => setState(() => _adultCount--)
                                    : null,
                                icon: Icon(
                                  Icons.remove,
                                  color: AppColorsTheme.primary,
                                ),
                              ),
                              Text(
                                '$_adultCount',
                                style: AppTextTheme.lightTextTheme.headlineMedium,
                              ),
                              IconButton(
                                onPressed: () => setState(() => _adultCount++),
                                icon: Icon(
                                  Icons.add,
                                  color: AppColorsTheme.primary,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),
                    ListTile(
                      title: Text(
                        "Children",
                        style: AppTextTheme.lightTextTheme.headlineMedium,
                      ),
                      subtitle: Text(
                        "2 - 11 yrs",
                        style: AppTextTheme.lightTextTheme.bodyMedium,
                      ),
                      trailing: SizedBox(
                        height: 50,
                        width: 120,
                        child: Card(
                          color: AppColorsTheme.background,
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              IconButton(
                                onPressed: _childCount > 0
                                    ? () => setState(() => _childCount--)
                                    : null,
                                icon: Icon(
                                  Icons.remove,
                                  color: AppColorsTheme.primary,
                                ),
                              ),
                              Text(
                                '$_childCount',
                                style: AppTextTheme.lightTextTheme.headlineMedium,
                              ),
                              IconButton(
                                onPressed: () => setState(() => _childCount++),
                                icon: Icon(
                                  Icons.add,
                                  color: AppColorsTheme.primary,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),
                    ListTile(
                      title: Text(
                        "Infant",
                        style: AppTextTheme.lightTextTheme.headlineMedium,
                      ),
                      subtitle: Text(
                        "Under 2 yrs",
                        style: AppTextTheme.lightTextTheme.bodyMedium,
                      ),
                      trailing: SizedBox(
                        height: 50,
                        width: 120,
                        child: Card(
                          color: AppColorsTheme.background,
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              IconButton(
                                onPressed: _infantCount > 0
                                    ? () => setState(() => _infantCount--)
                                    : null,
                                icon: Icon(
                                  Icons.remove,
                                  color: AppColorsTheme.primary,
                                ),
                              ),
                              Text(
                                '$_infantCount',
                                style: AppTextTheme.lightTextTheme.headlineMedium,
                              ),
                              IconButton(
                                onPressed: () => setState(() => _infantCount++),
                                icon: Icon(
                                  Icons.add,
                                  color: AppColorsTheme.primary,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),
                    Text(
                      "CHOOSE CABIN CLASS",
                      style: AppTextTheme.lightTextTheme.labelMedium?.copyWith(
                        color: AppColorsTheme.textSecondary,
                      ),
                    ),
                    const SizedBox(height: 10),
                    GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 3.3,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                      ),
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        final cabinClasses = [
                          'Economy',
                          'Premium Economy',
                          'Business Class',
                          'First Class'
                        ];
                        final cabinClass = cabinClasses[index];
                        final isSelected = selectedCabinClass == cabinClass;

                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedCabinClass = cabinClass;
                            });
                          },
                          child: Card(
                            color: isSelected
                                ? AppColorsTheme.primary
                                : AppColorsTheme.background,
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Center(
                              child: Text(
                                cabinClass,
                                style: AppTextTheme.lightTextTheme.labelLarge
                                    ?.copyWith(
                                  color: isSelected
                                      ? AppColorsTheme.lightColorScheme.onPrimary
                                      : AppColorsTheme.textPrimary,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 25),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: ElevatedButton(
                        style: AppButtonTheme.elevatedButtonTheme.style,
                        onPressed: () {},
                        child: Text(
                          'Done',
                          style: AppTextTheme.lightTextTheme.labelLarge?.copyWith(
                            color: AppColorsTheme.lightColorScheme.onPrimary,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}