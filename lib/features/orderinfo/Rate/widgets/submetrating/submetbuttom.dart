import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';

class SubmitButton extends StatelessWidget {
  final VoidCallback onPressed;

  const SubmitButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 315,
      height: 48,
      decoration: ShapeDecoration(
        color: AppColors.lightGreyText20Color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text("Submit Review", style: AppTextStyles.font20White),
      ),
    );
  }
}
