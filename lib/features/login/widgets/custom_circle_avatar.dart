import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/utils/app_colors.dart';


class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar({
    super.key, required this.image,
  });
final String image;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: AppColors.blackColor,
      radius: 21.sp,
      child: CircleAvatar(
        radius: 20.sp,
        backgroundColor: AppColors.whiteColor,
        child: Image.asset(image,fit:BoxFit.fill,),
      ),
    );
  }
}
