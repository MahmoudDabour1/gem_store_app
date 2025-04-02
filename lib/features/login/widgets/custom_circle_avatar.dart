import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/routing/routes_exports.dart';

class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar({
    super.key,
    required this.circleAvatarModel,
    this.onTap,
  });

  final CircleAvatarModel circleAvatarModel;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        backgroundColor: AppColors.blackColor,
        radius: 21.sp,
        child: CircleAvatar(
          radius: 20.sp,
          backgroundColor: AppColors.whiteColor(context),
          child: Image.asset(
            circleAvatarModel.image,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
