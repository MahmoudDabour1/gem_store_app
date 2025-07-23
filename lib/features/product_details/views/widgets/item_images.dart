import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/helpers/sizes_utils_extensions.dart';
import 'package:gem_store_app/core/utils/app_colors.dart';
import 'package:gem_store_app/core/widgets/app_back_button.dart';
import 'package:gem_store_app/features/product_details/views/widgets/current_image_indecator.dart';

import '../../../../core/utils/app_assets.dart';

class ItemImages extends StatefulWidget {
  const ItemImages({super.key});

  @override
  State<ItemImages> createState() => _ItemImagesState();
}

class _ItemImagesState extends State<ItemImages> {
  PageController currentImage = PageController(initialPage: 0);
  int current = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            height: context.screenHeight / 2 - 20.h,
            width: context.screenWidth,
            color: Color(0xFFFFFCFA),
            child: PageView.builder(
              controller: currentImage,
              onPageChanged: (value) {
                setState(() {
                  current = value;
                });
              },
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
            top: 10.h,
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
                        child: index == 0
                            ? AppBackButton()
                            : Container(
                                // margin: EdgeInsets.only(right: 8.),
                                height: 40.h,
                                width: 40.w,
                                decoration: BoxDecoration(
                                  color: AppColors.whiteColor(context),
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
                                    size: 26.w,
                                    Icons.favorite_rounded,
                                    color: AppColors.favouriteIconColor,
                                  ),
                                ),
                              ));
                  },
                )
              ],
            )),
        CurrentImageIndecator(index: current)
      ],
    );
  }
}
