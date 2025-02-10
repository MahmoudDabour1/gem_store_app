import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/app_colors.dart';
import '../../../core/theming/app_styles.dart';

class CartPriceItem extends StatelessWidget {
  final String firstText;
  final String lastText;
  final TextStyle? firstTextStyle;
  final TextStyle? lastTextStyle;

  const CartPriceItem(
      {super.key,
      required this.firstText,
      required this.lastText,
      this.firstTextStyle,
      this.lastTextStyle});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 20.w),
          child: Text(
            firstText,
            style: firstTextStyle ?? AppStyles.font14DarkGrayMedium,
          ),
        ),
        Text(
          "\$$lastText",
          style: lastTextStyle ??
              AppStyles.font14DarkGrayMedium.copyWith(
                color: AppColors.primaryColor,
              ),
        ),
      ],
    );
  }
}
