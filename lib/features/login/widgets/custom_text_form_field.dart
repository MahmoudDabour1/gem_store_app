import 'package:flutter/material.dart';
import 'package:gem_store_app/core/utils/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key, required this.label,
  });
final String label;
  @override
  Widget build(BuildContext context) {
    
    return TextFormField(
      onFieldSubmitted: (value) {
        
      },
      decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(),
          
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: AppColors.blueColor))),
    );
  }
}
