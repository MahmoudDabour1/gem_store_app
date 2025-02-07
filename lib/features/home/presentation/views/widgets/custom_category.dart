import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gem_store_app/core/utils/app_colors.dart';
import 'package:gem_store_app/core/utils/app_text_styles.dart';

class CustomCategory extends StatelessWidget {
  const CustomCategory({super.key, required this.image, required this.title});
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.r),
              color: AppColors.greyContainerColor),
          height: 38.h,
          width: 40.w,
          child: Center(
            child: SvgPicture.asset(
              image,
            ),
          ),
        ),
        SizedBox(height: 10.h),
        Text(
          title,
          style: AppTextStyles.font10,
        ),
      ],
    );
  }
}
