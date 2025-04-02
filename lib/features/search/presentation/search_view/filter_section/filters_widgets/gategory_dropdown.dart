import 'package:flutter/material.dart';
import 'package:gem_store_app/features/search/presentation/search_view/filter_section/filters_widgets/filter_constants.dart';

class CategoryDropdown extends StatelessWidget {
  final String selectedCategory;
  final Function(String) onCategoryChanged;

  const CategoryDropdown({super.key, 
    required this.selectedCategory,
    required this.onCategoryChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: selectedCategory,
      onChanged: (newValue) => onCategoryChanged(newValue!),
      items: FilterConstants.categories
          .map<DropdownMenuItem<String>>((String category) {
        return DropdownMenuItem<String>(
          value: category,
          child: Text(category),
        );
      }).toList(),
    );
  }
}