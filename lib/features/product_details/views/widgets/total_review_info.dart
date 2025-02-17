import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/spacing.dart';
import 'rating_bar.dart';
import '../../../../core/utils/app_text_styles.dart';

class TotalReviewInfo extends StatelessWidget {
  final double finalRate;
  final double totalRates;
  const TotalReviewInfo(
      {super.key, required this.finalRate, required this.totalRates});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              overflow: TextOverflow.ellipsis,
              maxLines: 3,
              textAlign: TextAlign.justify,
              '$finalRate',
              style: AppTextStyles.font40Bold,
            ),
            horizontalSpace(5),
            Center(
              child: Text(
                "Out of 5",
                style: AppTextStyles.font14greyRegular.copyWith(height: 2.h),
              ),
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CustomeRatingBar(
                rate: 5, itemSize: 24, itemColor: AppColors.starColor),
            Text(
              "$totalRates ratings",
              style: AppTextStyles.font14greyRegular,
            ),
          ],
        ),
      ],
    );
  }
}
