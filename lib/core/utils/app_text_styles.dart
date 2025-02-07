import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/utils/app_colors.dart';
import 'package:gem_store_app/core/utils/app_fonts.dart';

class AppTextStyles {
  static TextStyle font20Bold = TextStyle(
    fontSize: 20.sp,
    color: AppColors.blackColor,
    fontWeight: FontWeight.w700,
    fontFamily: AppFonts.productSans,
  );
  static TextStyle font10 = TextStyle(
    fontSize: 10.sp,
    color: AppColors.greyTextColor,
    fontFamily: AppFonts.productSans,
  );
}
