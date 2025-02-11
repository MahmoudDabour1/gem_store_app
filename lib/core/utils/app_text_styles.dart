import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/utils/app_colors.dart';
import 'package:gem_store_app/core/utils/app_fonts.dart';

import 'font_weight_helper.dart';

class AppTextStyles {
  //font 20
  static TextStyle font20BlackBold = TextStyle(
    fontSize: 20.sp,
    color: AppColors.blackColor,
    fontWeight: FontWeightHelper.bold,
    fontFamily: AppFonts.productSans,
  );
  static TextStyle font20BlackRegular = TextStyle(
    fontSize: 20.sp,
    color: AppColors.blackColor,
    fontFamily: AppFonts.productSans,
  );
  static TextStyle font20GreyRegular = TextStyle(
    fontSize: 20.sp,
    color: AppColors.lightGreyText20Color,
    fontFamily: AppFonts.productSansLight,
  );
  static TextStyle font20GreyLight = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeightHelper.light,
    color: AppColors.lightGreyText20Colorw300,
    fontFamily: AppFonts.productSansLight,
  );
  static TextStyle font20GreyMedium = TextStyle(
    fontSize: 20.sp,
    color: AppColors.lightGreyText20Color,
    fontWeight: FontWeightHelper.medium,
    fontFamily: AppFonts.productSansMedium,
  );
  static TextStyle font20semiBold = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeightHelper.semiBold,
  );

  //font 10
  static TextStyle font10GreyRegular = TextStyle(
    fontSize: 10.sp,
    color: AppColors.greyTextColor,
    fontFamily: AppFonts.productSans,
  );
  static TextStyle font10BrownRegular = TextStyle(
    fontSize: 10.sp,
    color: AppColors.brownColor,
    fontFamily: AppFonts.productSans,
  );
  static TextStyle font10darkRegular = TextStyle(
    fontSize: 10.sp,
    color: AppColors.darkColor,
    fontFamily: AppFonts.productSansLight,
  );
  static TextStyle font10DarkGrayMedium = TextStyle(
    fontSize: 10.sp,
    color: AppColors.darkGrayColor,
    fontWeight: FontWeightHelper.medium,
  );

  // font 22
  static TextStyle font22WhiteRegular = TextStyle(
    fontSize: 22.sp,
    color: AppColors.whiteColor,
    fontFamily: AppFonts.productSans,
  );

  // font 13
  static TextStyle font13GreyMedium = TextStyle(
    fontSize: 13.sp,
    color: AppColors.greyText13Color,
    fontWeight: FontWeightHelper.medium,
    fontFamily: AppFonts.productSans,
  );
  static TextStyle font13Roboto = TextStyle(
      fontSize: 13.sp,
      color: AppColors.lightGreyText13RobotoColor,
      fontWeight: FontWeight.w400,
      fontFamily: AppFonts.roboto);
  static TextStyle font13Weight400 =
      TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w400);

  // font 12
  static TextStyle font12Darkmedium = TextStyle(
    fontSize: 12.sp,
    color: AppColors.darkColor,
    fontWeight: FontWeightHelper.medium,
    fontFamily: AppFonts.productSansMedium,
  );
  static TextStyle font12BlackRegular = TextStyle(
    fontSize: 12.sp,
    color: AppColors.blackColor,
    fontFamily: AppFonts.productSansLight,
  );
  static TextStyle font12GreyRegular = TextStyle(
    fontSize: 12.sp,
    color: AppColors.lightGreyText12Color,
    fontFamily: AppFonts.productSansLight,
  );
  static TextStyle font12GreyLight = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.light,
    color: AppColors.lightGreyText12w300Color,
    fontFamily: AppFonts.productSansLight,
  );
  static TextStyle font12regular =
      TextStyle(color: Colors.grey, fontSize: 12.sp);

  // font 16
  static TextStyle font16DarkBold = TextStyle(
    fontSize: 16.sp,
    color: AppColors.darkColor,
    fontWeight: FontWeightHelper.bold,
    fontFamily: AppFonts.productSans,
  );
  static TextStyle font16whiteBold = TextStyle(
    fontSize: 16.sp,
    color: AppColors.whiteColor,
    fontWeight: FontWeightHelper.bold,
    fontFamily: AppFonts.productSans,
  );
  static TextStyle font16WhiteSemiBold = TextStyle(
    fontSize: 16.sp,
    color: AppColors.whiteColor,
    fontWeight: FontWeightHelper.semiBold,
  );
  static TextStyle font16regular = TextStyle(fontSize: 16.sp);
  static TextStyle font16Bold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.bold,
  );

  // font 17
  static TextStyle font17DarkLight = TextStyle(
    fontSize: 17.sp,
    fontWeight: FontWeightHelper.light,
    color: AppColors.darkColor,
    fontFamily: AppFonts.productSansLight,
  );

  // font 14
  static TextStyle font14Medium = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.medium,
    fontFamily: AppFonts.productSansMedium,
  );
  static TextStyle font14BlackRegular = TextStyle(
    fontSize: 14.sp,
    color: AppColors.blackColor,
    fontFamily: AppFonts.productSansLight,
  );
  static TextStyle font14DArkGraySemiBold = TextStyle(
    fontSize: 14.sp,
    color: AppColors.darkGrayColor,
    fontWeight: FontWeightHelper.semiBold,
  );
  static TextStyle font14DarkGrayMedium = TextStyle(
    fontSize: 14.sp,
    color: AppColors.darkGrayColor,
    fontWeight: FontWeightHelper.medium,
  );
  static TextStyle font14greyRegular = TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.regular,
      color: Colors.grey);

// font 24
  static TextStyle font24BlackBold = TextStyle(
    fontSize: 24.sp,
    color: AppColors.blackColor,
    fontWeight: FontWeightHelper.bold,
    fontFamily: AppFonts.productSans,
  );

//font 11
  static TextStyle font11BlackLight = TextStyle(
    fontSize: 11.sp,
    color: AppColors.blackColor,
    fontWeight: FontWeightHelper.light,
  );

  //font 25
  static TextStyle font25BlackBold = TextStyle(
    fontSize: 25.sp,
    color: AppColors.blackColor,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle font25Bold = TextStyle(
    fontSize: 25.sp,
    fontWeight: FontWeightHelper.bold,
  );

  //font 18
  static TextStyle font18BlackSemiBold = TextStyle(
    fontSize: 18.sp,
    color: AppColors.blackColor,
    fontWeight: FontWeightHelper.semiBold,
  );
  static TextStyle font18WhiteBold = TextStyle(
      fontSize: 18.sp, fontWeight: FontWeightHelper.bold, color: Colors.white);

//font 40
  static TextStyle font40Bold =
      TextStyle(fontSize: 40.sp, fontWeight: FontWeight.bold);

//font 26
  static TextStyle font26semiBold =
      TextStyle(fontSize: 26.sp, fontWeight: FontWeightHelper.semiBold);
}
