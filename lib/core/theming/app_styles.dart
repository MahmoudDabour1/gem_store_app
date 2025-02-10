import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';
import 'font_weight_helper.dart';

class AppStyles {
  static TextStyle font11BlackLight = TextStyle(
    fontSize: 11.sp,
    color: AppColors.primaryColor,
    fontWeight: FontWeightHelper.light,
  ); static TextStyle font10DarkGrayMedium = TextStyle(
    fontSize: 10.sp,
    color: AppColors.darkGrayColor,
    fontWeight: FontWeightHelper.medium,
  ); static TextStyle font25BlackBold = TextStyle(
    fontSize: 25.sp,
    color: AppColors.primaryColor,
    fontWeight: FontWeightHelper.bold,
  );static TextStyle font14DArkGraySemiBold = TextStyle(
    fontSize: 14.sp,
    color: AppColors.darkGrayColor,
    fontWeight: FontWeightHelper.semiBold,
  );static TextStyle font14DarkGrayMedium = TextStyle(
    fontSize: 14.sp,
    color: AppColors.darkGrayColor,
    fontWeight: FontWeightHelper.medium,
  );static TextStyle font18BlackSemiBold = TextStyle(
    fontSize: 18.sp,
    color: AppColors.primaryColor,
    fontWeight: FontWeightHelper.semiBold,
  );static TextStyle font16WhiteSemiBold = TextStyle(
    fontSize: 16.sp,
    color: AppColors.whiteColor,
    fontWeight: FontWeightHelper.semiBold,
  );

}
