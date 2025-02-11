import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/utils/app_text_styles.dart';
import 'package:gem_store_app/core/utils/spacing.dart';
import 'package:gem_store_app/core/widgets/app_custom_app_bar.dart';
import 'package:gem_store_app/features/track_order/widgets/track_order_list_view.dart';

import '../../core/utils/app_colors.dart';

class TrackOrderScreen extends StatelessWidget {
  const TrackOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppCustomAppBar(title: "Track Order"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(50),
            RichText(
                text: TextSpan(
              text: "Delivered on",
              style: AppTextStyles.font12Darkmedium
                  .copyWith(color: AppColors.lightGrayColor),
              children: [
                TextSpan(
                  text: " 15.05.21",
                  style: AppTextStyles.font14DarkGrayMedium.copyWith(
                    color: AppColors.blackColor,
                  ),
                ),
              ],
            )),
            verticalSpace(16),
            RichText(
              text: TextSpan(
                text: "Tracking Number :",
                style: AppTextStyles.font12Darkmedium
                    .copyWith(color: AppColors.lightGrayColor),
                children: [
                  TextSpan(
                    text: " IK287368838",
                    style: AppTextStyles.font14DarkGrayMedium.copyWith(
                      color: AppColors.blackColor,
                    ),
                  ),
                ],
              ),
            ),
            verticalSpace(43),
            TrackOrderListView(),
          ],
        ),
      ),
    );
  }
}
