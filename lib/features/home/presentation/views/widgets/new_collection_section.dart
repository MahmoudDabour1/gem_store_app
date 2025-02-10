import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/utils/app_assets.dart';
import 'package:gem_store_app/core/utils/app_colors.dart';
import 'package:gem_store_app/core/utils/app_text_styles.dart';

class NewCollectionSection extends StatelessWidget {
  const NewCollectionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 157.h,
      color: AppColors.lightGreyColor,
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Row(children: [
          Expanded(
            child: Column(
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
                      'NEW COLLECTION',
                      style: AppTextStyles.font12Light,
                    ),
                  ],
                ),
                SizedBox(height: 15.h),
                Flexible(
                    child: Text('HANG OUT & PARTY ',
                        style: AppTextStyles.font20Light)),
              ],
            ),
          ),
          SizedBox(width: 20.w),
          Stack(alignment: Alignment.center, children: [
            Container(
              height: 132.h,
              width: 132.w,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.firstGreyContainerColor),
            ),
            Container(
              height: 102.h,
              width: 102.w,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: AppColors.greyText13Color),
            ),
            Image.asset(
              AppAssets.newCollecpng,
            ),
          ]),
        ]),
      ),
    );
  }
}
