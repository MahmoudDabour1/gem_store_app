import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/utils/app_assets.dart';
import 'package:gem_store_app/core/utils/app_colors.dart';
import 'package:gem_store_app/features/product_details/views/widgets/title_details_sections.dart';

import '../../../../core/utils/app_text_styles.dart';


class FullDetails extends StatelessWidget {
  const FullDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var borderRadius = BorderRadius.only(
        topLeft: Radius.circular(20), topRight: Radius.circular(20));
    return Column(
      children: [
        Transform.translate(
          offset: Offset(0, -60.h),
          child: Container(
              padding: EdgeInsets.only(top: 40.w),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: AppColors.lightGrayColor.withValues(alpha: .6),
                        blurRadius: 10,
                        offset: Offset(0, -8),
                        spreadRadius: -.1)
                  ],
                  borderRadius: borderRadius),
              child: Padding(
                padding: EdgeInsets.only(right: 18.w, left: 25.w),
                child: ProductTitleAndDetails(),
              )),
        ),
        ColoredBox(
          color: Colors.white,
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.only(bottom: 0),
            height: 75.h,
            clipBehavior: Clip.none,
            decoration: BoxDecoration(
                color: AppColors.darkerGrayColor, borderRadius: borderRadius),
            child: TextButton.icon(
              onPressed: () {},
              label: Text(
                "Add To Cart",
                style: AppTextStyles.font18BlackSemiBold
                    .copyWith(color: Colors.white),
              ),
              icon: Image.asset(AppAssets.cartIcon),
            ),
          ),
        )
      ],
    );
  }
}
