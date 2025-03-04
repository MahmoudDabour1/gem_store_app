import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/utils/app_colors.dart';
import 'package:gem_store_app/core/utils/app_text_styles.dart';

class DiscoveryContainer extends StatelessWidget {
  const DiscoveryContainer(
      {super.key,
      required this.title,
      required this.image,
      required this.colorForContainer,
      required this.color});

  final String title;
  final String image;
  final Color colorForContainer;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 125.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        color: colorForContainer,
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20.w),
            child: Text(
              title,
              style: AppTextStyles.font16DarkBold
                  .copyWith(color: AppColors.whiteColor(context)),
            ),
          ),
          Spacer(),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 105.h,
                width: 105.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: color.withOpacity(0.5),
                ),
              ),
              Container(
                height: 75.h,
                width: 75.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: color,
                ),
              ),
              SizedBox(
                height: 126.h,
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
