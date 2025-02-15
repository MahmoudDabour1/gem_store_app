import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/utils/app_assets.dart';
import 'package:gem_store_app/core/utils/app_colors.dart';
import 'package:gem_store_app/core/utils/app_text_styles.dart';

class CustomTopSectionFirst extends StatelessWidget {
  const CustomTopSectionFirst({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 141.h,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.lightGreyColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Row(children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 12.h,
                        width: 0.79.w,
                        color: AppColors.lightGreyText12Color,
                      ),
                      SizedBox(width: 10.w),
                      Text(
                        'Sale up to 40%',
                        style: AppTextStyles.font12GreyRegular,
                      ),
                    ],
                  ),
                  SizedBox(height: 15.h),
                  Flexible(
                    child: Text(
                      'FOR SLIM & BEAUTY',
                      maxLines: 2,
                      style: AppTextStyles.font20GreyLight,
                    ),
                  ),
                ],
              ),
            ),
            // SizedBox(width: 70.w),
            SizedBox(
              width: 140.w,
              height: 141.h,
              child: Stack(alignment: Alignment.center, children: [
                Container(
                  height: 86.h,
                  width: 86.w,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.firstGreyContainerColor),
                ),
                Image.asset(
                  AppAssets.newCollecpng,
                  height: 229.h,
                ),
              ]),
            ),
          ]),
        ));
  }
}
