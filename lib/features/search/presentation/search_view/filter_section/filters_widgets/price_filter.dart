import 'package:flutter/material.dart';

class PriceFilter extends StatelessWidget {
  final double minPrice;
  final double maxPrice;
  final Function(RangeValues) onChanged;

  const PriceFilter({super.key, 
    required this.minPrice,
    required this.maxPrice,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return RangeSlider(
      values: RangeValues(minPrice, maxPrice),
      min: 0,
      max: 1000,
      divisions: 10,
      labels: RangeLabels(
        "\$${minPrice.toInt()}",
        "\$${maxPrice.toInt()}",
      ),
      onChanged: onChanged,
    );
  }
}
