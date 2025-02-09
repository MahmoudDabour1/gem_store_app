import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/utils/app_assets.dart';
import 'package:gem_store_app/core/utils/app_text_styles.dart';

class CustomFeatureProduct extends StatelessWidget {
  const CustomFeatureProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10.r),
          //child: SvgPicture.asset(AppAssets.feature),
          child: Image.asset(
            AppAssets.feature2,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 10.h),
        Text(
          'Long Sleeve Dress',
          style: AppTextStyles.font12,
        ),
        SizedBox(height: 5.h),
        Text(
          '\$ ${39.99}',
          style: AppTextStyles.font16,
        )
      ],
    );
  }
}
