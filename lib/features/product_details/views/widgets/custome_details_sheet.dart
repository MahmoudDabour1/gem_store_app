import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/features/product_details/views/widgets/title_details_sections.dart';

import '../../../../core/utils/app_colors.dart';

class CustomeDetailsSheet extends StatelessWidget {
  const CustomeDetailsSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, -60.h),
      child: Container(
          padding: EdgeInsets.only(top: 40.w),
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: AppColors.lightGrayColor,
                    blurRadius: 10,
                    offset: Offset(0, -8),
                    spreadRadius: -.1)
              ],
              borderRadius:  BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child: Padding(
            padding: EdgeInsets.only(right: 18.w, left: 25.w),
            child: ProductTitleAndDetails(),
          )),
    );
  }
}
