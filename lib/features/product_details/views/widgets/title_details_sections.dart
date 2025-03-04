import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/helpers/sizes_utils_extensions.dart';
import '../../../../core/utils/app_colors.dart';
import 'rating_bar.dart';
import 'sections_list.dart';
import '../../../../core/utils/app_text_styles.dart';

class ProductTitleAndDetails extends StatelessWidget {
  const ProductTitleAndDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Sportswear Set",
              style: AppTextStyles.font18BlackSemiBold,
            ),
            Text(
              "\$ 80.00",
              style: AppTextStyles.font26semiBold,
            )
          ],
        ),
        5.vs,
        Row(
          children: [
            CustomeRatingBar(
                rate: 5, itemSize: 24, itemColor: AppColors.starColor),
            Padding(
              padding: EdgeInsets.only(top: 5.h),
              child: Text(
                "(85)",
                style: AppTextStyles.font12GreyRegular,
              ),
            )
          ],
        ),
        20.vs,
        SectionsList()
      ],
    );
  }
}
