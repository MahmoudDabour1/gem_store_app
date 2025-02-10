import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/theming/app_colors.dart';
import '../../../core/theming/app_styles.dart';
import '../../../core/theming/font_weight_helper.dart';
import '../../../core/utils/spacing.dart';

class TrackOrderListViewItem extends StatelessWidget {
  final String title;
  final String dateTime;
  final bool isFirst;
  final bool isLast;

  const TrackOrderListViewItem({super.key,
    required this.title,
    required this.dateTime,
    this.isFirst = false,
    this.isLast = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            CircleAvatar(
              radius: 10.r,
              backgroundColor: AppColors.whiteColor,
              child: SvgPicture.asset("assets/svgs/track_done_svg.svg"),
            ),
            if (!isLast)
              Column(
                children: [
                  verticalSpace(6),
                  CircleAvatar(
                    radius: 3.r,
                    backgroundColor: AppColors.darkerGrayColor,
                  ),
                  verticalSpace(6),
                  CircleAvatar(
                    radius: 3.r,
                    backgroundColor: AppColors.darkerGrayColor,
                  ),
                  verticalSpace(6),
                  CircleAvatar(
                    radius: 3.r,
                    backgroundColor: AppColors.darkerGrayColor,
                  ),
                  verticalSpace(6),

                ],
              ),
          ],
        ),
        horizontalSpace(15),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(top: 4),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: AppStyles.font11BlackLight.copyWith(
                    fontWeight: FontWeightHelper.medium,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  dateTime,
                  style: AppStyles.font11BlackLight.copyWith(
                      fontWeight: FontWeightHelper.medium,
                      fontSize: 12.sp,
                      color: AppColors.lightGrayColor
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}