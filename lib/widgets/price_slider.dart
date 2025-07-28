import 'package:flutter/material.dart';

class PriceSlider extends StatefulWidget {
  const PriceSlider({super.key});

  @override
  State<PriceSlider> createState() => _PriceSliderState();
}

class _PriceSliderState extends State<PriceSlider> {
  int start = 2000;
  int end = 28000;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("₹$start - ₹$end"),
        RangeSlider(
          values: RangeValues(start.toDouble(), end.toDouble()),
          labels: RangeLabels(start.toString(), end.toString()),
          onChanged: (value) {
            setState(() {
              start = value.start.toInt();
              end = value.end.toInt();
            });
          },
          min: 2000.0,
          max: 28000.0,
        ),
      ],
    );
  }
}
