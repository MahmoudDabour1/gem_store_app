import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/app_colors.dart';
import '../../../core/theming/app_styles.dart';
import '../../../core/theming/font_weight_helper.dart';
import '../../../core/utils/spacing.dart';

class CartListViewItem extends StatefulWidget {
  const CartListViewItem({super.key});

  @override
  State<CartListViewItem> createState() => _CartListViewItemState();
}

class _CartListViewItemState extends State<CartListViewItem> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100.h,
          width: MediaQuery.sizeOf(context).width,
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Row(
            children: [
              Image.asset(
                "assets/images/girl.png",
                width: 100.w,
                height: 100.h,
              ),
              horizontalSpace(13),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Turtleneck Sweater",
                        style: AppStyles.font18BlackSemiBold,
                      ),
                      // CheckboxListTile(value: true, onChanged: (value){})
                    ],
                  ),
                  verticalSpace(13),
                  Text(
                    "\$ 39.99",
                    style: AppStyles.font18BlackSemiBold.copyWith(
                      fontSize: 16.sp,
                    ),
                  ),
                  Center(
                    child: Row(
                      children: [
                        Text(
                          "Size: L  |  Color: Black",
                          style: AppStyles.font14DArkGraySemiBold.copyWith(
                            fontWeight: FontWeightHelper.medium,
                            fontSize: 12.sp,
                          ),
                        ),
                        horizontalSpace(8),
                        Container(
                          width: 80.w,
                          height: 30.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            border: Border.all(
                              color: AppColors.darkGrayColor,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              InkWell(
                                  onTap: () {
                                    setState(() {
                                      number--;
                                    });
                                  },
                                  child: Icon(
                                    Icons.remove,
                                    size: 20.r,
                                  )),
                              Text(
                                number.toString(),
                                style: AppStyles.font14DArkGraySemiBold
                                    .copyWith(
                                  fontWeight: FontWeightHelper.medium,
                                  fontSize: 14.sp,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    number++;
                                  });
                                },
                                child: Icon(
                                  Icons.add,
                                  size: 20.r,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        verticalSpace(25),
      ],
    );
  }
}
