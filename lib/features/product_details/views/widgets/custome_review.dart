import 'package:flutter/material.dart';
import 'package:gem_store_app/core/helpers/sizes_utils_extensions.dart';
import '../../../../core/utils/app_colors.dart';
import 'rating_bar.dart';
import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_text_styles.dart';

class CustomeReview extends StatelessWidget {
  final String userImageUrl;
  final String userName;
  final String review;
  final double rate;
  final String dateOfReview;
  const CustomeReview(
      {super.key,
      required this.userImageUrl,
      required this.review,
      required this.rate,
      required this.dateOfReview,
      required this.userName});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(AppAssets.imagesTestItem),
                ),
                14.hs,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userName,
                      style: AppTextStyles.font13GreyMedium,
                    ),
                    5.vs,
                    CustomeRatingBar(
                        rate: rate,
                        itemSize: 13,
                        itemColor: AppColors.starColor),
                  ],
                )
              ],
            ),
            Text(
              dateOfReview,
              style: AppTextStyles.font14greyRegular,
            )
          ],
        ),
        10.vs,
        Text(
          overflow: TextOverflow.ellipsis,
          maxLines: 3,
          textAlign: TextAlign.justify,
          review,
          style: AppTextStyles.font12regular,
        ),
        10.vs
      ],
    );
  }
}
