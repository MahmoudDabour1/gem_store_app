import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/utils/app_assets.dart';
import 'package:gem_store_app/core/utils/app_text_styles.dart';

class CustomRecommendedProduct extends StatelessWidget {
  const CustomRecommendedProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 66.h,
      width: 203.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: Colors.white,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.r),
            child: SizedBox(
              height: 66.h,
              child: Image.asset(
                AppAssets.recommendpng,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 10.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'White fashion hoodie',
                style: AppTextStyles.font12Darkmedium,
              ),
              SizedBox(height: 5.h),
              Text('\$ 39.99', style: AppTextStyles.font16DarkBold),
            ],
          ),
        ],
      ),
    );
  }
}
