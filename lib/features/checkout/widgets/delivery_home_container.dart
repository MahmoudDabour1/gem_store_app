import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_text_styles.dart';
import '../../../core/utils/font_weight_helper.dart';
import '../../../core/utils/spacing.dart';

class DeliveryHomeContainer extends StatelessWidget {
  const DeliveryHomeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75.h,
      decoration: BoxDecoration(
        color: AppColors.moreLighterGrayColor,
        shape: BoxShape.rectangle,
        border: Border.symmetric(
          horizontal: BorderSide(
            color: AppColors.lightGrayColor,
            width: 1,
          ),
        ),
      ),
      child: Center(
        child: Row(
          children: [
            Radio.adaptive(
              value: null,
              groupValue: null,
              onChanged: null,
              activeColor: AppColors.greenColor,
              splashRadius: 50.r,
              fillColor: WidgetStateProperty.all(AppColors.greenColor),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      "Free",
                      style: AppTextStyles.font14DArkGraySemiBold.copyWith(
                        fontWeight: FontWeightHelper.medium,
                      ),
                    ),
                    horizontalSpace(20),
                    Text(
                      "Delivery to home",
                      style: AppTextStyles.font14DArkGraySemiBold.copyWith(
                          fontWeight: FontWeightHelper.medium,
                          color: AppColors.darkGrayColor),
                    ),
                  ],
                ),
                Text(
                  "Delivery from 3 to 7 business days",
                  style: AppTextStyles.font11BlackLight.copyWith(
                      fontSize: 12.sp, color: AppColors.lightGrayColor),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
