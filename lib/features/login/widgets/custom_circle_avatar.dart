import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/utils/app_colors.dart';
import 'package:gem_store_app/core/routing/routes_exports.dart';
class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar({
    super.key,
    required this.circleAvatarModel,
  });
 
  final CircleAvatarModel circleAvatarModel;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: AppColors.blackColor,
      radius: 21.sp,
      child: CircleAvatar(
        radius: 20.sp,
        backgroundColor: AppColors.whiteColor,
        child: Image.asset(
          circleAvatarModel.image,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
