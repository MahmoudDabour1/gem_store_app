import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/utils/app_colors.dart';
import 'package:gem_store_app/core/utils/spacing.dart';
import 'package:gem_store_app/features/product_details/views/widgets/rating_bar.dart';
import 'package:gem_store_app/features/product_details/views/widgets/sections_list.dart';
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
              style:
                  AppTextStyles.font26semiBold,
            )
          ],
        ),
        verticalSpace(5),
        Row(
          children: [
            CustomeRatingBar(
                rate: 5,
                itemSize: 24,
                itemColor: AppColors.starColor),
            Padding(
              padding: EdgeInsets.only(top: 5.h),
              child: Text(
                "(85)",
                style: AppTextStyles.font12GreyRegular,
              ),
            )
          ],
        ),
        verticalSpace(20),
        SectionsList()
      ],
    );
  }
}
