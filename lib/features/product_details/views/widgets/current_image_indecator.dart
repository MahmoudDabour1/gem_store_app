import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/helpers/sizes_utils_extensions.dart';

import '../../../../core/utils/app_colors.dart';

class CurrentImageIndecator extends StatelessWidget {
  final int index;
  const CurrentImageIndecator({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 70.h,
        right: 160.w,
        width: 50.w,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            for (int ind = 0; ind < 3; ind++)
              Container(
                padding: ind == index ? 2.allEdgeInsets : 0.allEdgeInsets,
                width: ind == index ? 10.5 : 5.5,
                height: ind == index ? 10.5 : 5.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7.r),
                    border:
                        Border.all(color: AppColors.deepGrayColor, width: 1.5),
                    color: ind == index ? Colors.white : AppColors.deepGrayColor),
                child: Container(
                  height: 5.5.h,
                  width: 5.5.w,
                  decoration: BoxDecoration(
                    color: AppColors.deepGrayColor,
                    borderRadius: BorderRadius.circular(3.r),
                  ),
                ),
              )
          ],
        ));
  }
}
