import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/utils/app_colors.dart';

import '../../../../core/utils/app_assets.dart';

class ItemImages extends StatelessWidget {
  const ItemImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            height: MediaQuery.of(context).size.height / 2 - 20.h,
            width: MediaQuery.of(context).size.width,
            color: Color(0xFFFFFCFA),
            child: PageView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return Image.asset(
                  AppAssets.imagesTestItem,
                  fit: BoxFit.contain,
                  width: double.infinity,
                );
              },
            )),
        Positioned(
            left: 20.w,
            width: MediaQuery.of(context).size.width - 40.w,
            top: 20.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ...List.generate(
                  2,
                  (index) {
                    return GestureDetector(
                        onTap: () {},
                        child: Image.asset(index == 0
                            ? AppAssets.imagesBackButtonIcon
                            : AppAssets.imagesActiveFavoriteIcon));
                  },
                )
              ],
            )),
        Positioned(
            bottom: 70.h,
            right: 160.w,
            width: 50.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                for (int index = 0; index < 3; index++)
                  Container(
                    padding: index == 0
                        ? EdgeInsets.all(2.h)
                        : EdgeInsets.all(0),
                    width: index == 0 ? 10.5 : 5.5,
                    height: index == 0 ? 10.5 : 5.5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.r),
                        border: Border.all(
                            color: AppColors.deepGrayColor, width: 1.5),
                        color: index == 0
                            ? Colors.white
                            : AppColors.deepGrayColor),
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
            ))
      ],
    );
  }
}
