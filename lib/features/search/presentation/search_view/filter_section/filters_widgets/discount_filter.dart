import 'package:flutter/material.dart';
import 'package:gem_store_app/features/search/presentation/search_view/filter_section/filters_widgets/filter_constants.dart';

class DiscountFilter extends StatelessWidget {
  final List<String> selectedDiscounts;
  final Function(String) onDiscountToggle;

  const DiscountFilter({super.key, 
    required this.selectedDiscounts,
    required this.onDiscountToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0,
      children: FilterConstants.discounts.map((discount) {
        return ChoiceChip(
          label: Text(discount),
          selected: selectedDiscounts.contains(discount),
          onSelected: (selected) => onDiscountToggle(discount),
        );
      }).toList(),
    );
  }
}