import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/helpers/sizes_utils_extensions.dart';
import 'package:gem_store_app/features/product_details/views/widgets/current_image_indecator.dart';

import '../../../../core/utils/app_assets.dart';

class ItemImages extends StatelessWidget {
  const ItemImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            height: context.screenHeight / 2 - 20.h,
            width: context.screenWidth,
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
            width: context.screenWidth - 40.w,
            top: 20.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ...List.generate(
                  2,
                  (index) {
                    return GestureDetector(
                        onTap: () {
                          if (index == 0) {
                            Navigator.pop(context);
                          }
                        },
                        child: Image.asset(index == 0
                            ? AppAssets.imagesBackButtonIcon
                            : AppAssets.imagesActiveFavoriteIcon));
                  },
                )
              ],
            )),
        CurrentImageIndecator()
      ],
    );
  }
}
