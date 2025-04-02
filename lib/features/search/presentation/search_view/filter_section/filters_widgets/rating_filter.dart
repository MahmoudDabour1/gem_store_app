import 'package:flutter/material.dart';
import 'package:gem_store_app/features/search/presentation/search_view/filter_section/filters_widgets/filter_constants.dart';

class RatingFilter extends StatelessWidget {
  final List<int> selectedRatings;
  final Function(int) onRatingToggle;

  const RatingFilter({super.key, 
    required this.selectedRatings,
    required this.onRatingToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0,
      children: FilterConstants.ratings.map((rating) {
        return ChoiceChip(
          label: Text("★ $rating"),
          selected: selectedRatings.contains(rating),
          onSelected: (selected) => onRatingToggle(rating),
        );
      }).toList(),
    );
  }
}