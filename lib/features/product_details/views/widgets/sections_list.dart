import 'package:flutter/material.dart';

import 'package:gem_store_app/core/helpers/sizes_utils_extensions.dart';
import 'package:gem_store_app/features/product_details/views/widgets/similar_items_section.dart';

import '../../../../core/utils/spacing.dart';
import 'total_review_info.dart';
import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_text_styles.dart';
import 'custome_review.dart';
import 'custome_section_of_details.dart';

class SectionsList extends StatelessWidget {
  // TODO: Refactor this file to follow best practices and keep it within 50 lines if possible.

  const SectionsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomeSectionOfDetails(title: "Description", children: [
          Text(
            overflow: TextOverflow.ellipsis,
            maxLines: 3,
            textAlign: TextAlign.justify,
            'Sportswear is no longer under culture, it is no longer indie or cobbled together as it once was. Sport is fashion today. The top is oversized in fit and style, may need to size down.',
            style: AppTextStyles.font12regular,
          ),
        ]),
        10.vs,
        CustomeSectionOfDetails(title: "Reviews", children: [
          TotalReviewInfo(finalRate: 4.9, totalRates: 85),
          verticalSpace(10),
          ListView.builder(
            shrinkWrap: true,
            itemCount: 3,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return SizedBox(
                child: CustomeReview(
                  userName: "Kelly Rihana",
                  userImageUrl: AppAssets.imagesTestItem,
                  dateOfReview: "5m ago",
                  rate: 5,
                  review:
                      "I'm very happy with order, It was delivered on and good quality. Recommended!",
                ),
              );
            },
          )
        ]),
       SimilarItemsSection()
      ],
    );
  }
}
