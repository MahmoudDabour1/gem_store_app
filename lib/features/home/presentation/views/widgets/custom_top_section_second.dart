import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/utils/app_assets.dart';
import 'package:gem_store_app/core/utils/app_colors.dart';
import 'package:gem_store_app/core/utils/app_text_styles.dart';

class CustomTopSectionSecond extends StatelessWidget {
  const CustomTopSectionSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 209.h,
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
                        style: AppTextStyles.font12Light,
                      ),
                    ],
                  ),
                  SizedBox(height: 15.h),
                  Flexible(
                    child: Text('Most sexy & fabulous design',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                        // textAlign: TextAlign.center,
                        style: AppTextStyles.font20Medium),
                  ),
                ],
              ),
            ),
            SizedBox(width: 50.w),
            Stack(alignment: Alignment.center, children: [
              SizedBox(
                height: 114.h,
                width: 114.w,
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.firstGreyContainerColor),
                ),
              ),
              Image.asset(
                AppAssets.topCollection,
                height: 229.h,
              ),
            ]),
          ]),
        ));
  }
}
