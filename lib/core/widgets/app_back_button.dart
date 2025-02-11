import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/app_colors.dart';

class AppBackButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const AppBackButton({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed ??
          () {
            Navigator.of(context).pop();
          },
      child: Padding(
        padding:  EdgeInsets.all(10.r),
        child: Container(
          width: 20.w,
          height: 20.h,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: AppColors.blackColor.withOpacity(0.2),
                blurRadius: 10.r,
                offset: const Offset(0, 2),
              ),
            ],
            color: AppColors.whiteColor,
            shape: BoxShape.circle,
          ),
          child: Align(
            alignment: Alignment.center,
            child: SvgPicture.asset(
              "assets/svgs/arrow_left_svg.svg",
              height: 16.h,
              width: 16.w,
            ),
          ),
        ),
      ),
    );
  }
}
