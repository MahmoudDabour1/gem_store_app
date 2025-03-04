import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/utils/app_assets.dart';
import 'package:gem_store_app/core/utils/app_colors.dart';

class ImageContainerOfSecondTopSection extends StatelessWidget {
  const ImageContainerOfSecondTopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
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
      ],
    );
  }
}
