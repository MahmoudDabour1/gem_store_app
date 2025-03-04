import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/utils/app_assets.dart';
import 'package:gem_store_app/core/utils/app_colors.dart';

class ImageContainerOfFirstTopSection extends StatelessWidget {
  const ImageContainerOfFirstTopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140.w,
      height: 141.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
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
        ],
      ),
    );
  }
}
