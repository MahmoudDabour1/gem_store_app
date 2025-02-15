import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/utils/app_assets.dart';
import 'package:gem_store_app/core/utils/app_colors.dart';

import '../../../../../core/utils/app_text_styles.dart';

class CustomSearchedItem extends StatelessWidget {
  const CustomSearchedItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.h,
      width: 141.w,
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              SizedBox(
                height: 186.h,
                width: 141.w,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.r),
                  child: Image.asset(
                    AppAssets.feature2,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 8.w, top: 10.h),
                height: 27.h,
                width: 27.w,
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      offset: const Offset(0, 1),
                      blurRadius: 0.3,
                      spreadRadius: 1.r,
                    ),
                  ],
                ),
                child: IconButton(
                  iconSize: 20.sp,
                  padding: EdgeInsets.zero,
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite_rounded,
                    color: AppColors.favouriteIconColor,
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 10.h),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Long Sleeve Dress',
                  style: AppTextStyles.font12Darkmedium,
                ),
                SizedBox(height: 5.h),
                Row(
                  children: [
                    Text(
                      '\$ ${39.99}',
                      style: AppTextStyles.font16DarkBold,
                    ),
                    SizedBox(width: 10.w),
                    Text(
                      '\$ ${54.99}',
                      style: AppTextStyles.font12GreyRegular.copyWith(
                        decoration: TextDecoration.lineThrough,
                        color: AppColors.lightGreyText12w300Color,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    ...List.generate(
                        5,
                        (index) => Icon(Icons.star,
                            color: AppColors.starColor, size: 12.sp)),
                    Text(
                      '(53)',
                      style: AppTextStyles.font10darkRegular,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
