import 'package:flutter/material.dart';
import 'package:gem_store_app/features/search/presentation/search_view/filter_section/filters_widgets/filter_constants.dart';


class ColorFilter extends StatelessWidget {
  final List<String> selectedColors;
  final Function(String) onColorToggle;

  const ColorFilter({
    required this.selectedColors,
    required this.onColorToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: FilterConstants.colors.map((hex) {
        return GestureDetector(
          onTap: () => onColorToggle(hex),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(int.parse("0xFF${hex.substring(1)}")),
              border: selectedColors.contains(hex)
                  ? Border.all(color: Colors.black, width: 2)
                  : null,
            ),
          ),
        );
      }).toList(),
    );
  }
}
