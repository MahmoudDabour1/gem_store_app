import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/utils/app_assets.dart';
import 'package:gem_store_app/core/utils/app_colors.dart';
import 'package:gem_store_app/core/utils/app_text_styles.dart';

class CustomTopSectionThird extends StatelessWidget {
  const CustomTopSectionThird({super.key, this.isReversed = false});

  final bool isReversed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 194.h,
      width: 148.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: AppColors.lightGreyColor,
      ),
      child: Row(
        textDirection: isReversed ? TextDirection.rtl : TextDirection.ltr,
        children: [
          SizedBox(
            height: 194.h,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.r),
              child: Image.asset(
                AppAssets.topCollection2,
                fit: BoxFit.cover,
              ),
            ),
          ),
          //SizedBox(width: 10.w),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('T-Shirt', style: AppTextStyles.font13Roboto),
                SizedBox(height: 20.h),
                Flexible(
                  child: Text('The Office Life',
                      maxLines: 3, style: AppTextStyles.font17DarkLight),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
