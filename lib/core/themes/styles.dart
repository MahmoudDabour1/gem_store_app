import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppStyles {
  static TextStyle font25Weight700 = TextStyle(
    fontSize: 25.sp,
    fontWeight: FontWeight.w700,
  );

  static TextStyle font16regular = TextStyle(fontSize: 16.sp);

  static TextStyle font16Weight700 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w700,
  );

  static TextStyle font20Weight600 = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
  );

  static TextStyle font13Weight400 =
      TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w400);

  static TextStyle font18Weight700 = TextStyle(
      fontSize: 18.sp, fontWeight: FontWeight.w700, color: Colors.white);

  static TextStyle font14weight400 = TextStyle(
      fontSize: 14.sp, fontWeight: FontWeight.w400, color: Colors.grey);

  static TextStyle font40Bold =
      TextStyle(fontSize: 40.sp, fontWeight: FontWeight.bold);

  static TextStyle font12regular =
      TextStyle(color: Colors.grey, fontSize: 12.sp);

  static TextStyle font26Weight600 =
      TextStyle(fontSize: 26.sp, fontWeight: FontWeight.w600);
}
