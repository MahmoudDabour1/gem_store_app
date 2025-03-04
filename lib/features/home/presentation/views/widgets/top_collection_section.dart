import 'package:flutter/material.dart';
import 'package:gem_store_app/core/helpers/sizes_utils_extensions.dart';
import 'package:gem_store_app/core/utils/app_strings.dart';
import '../../../../../core/utils/app_text_styles.dart';
import 'custom_top_section_first.dart';
import 'custom_top_section_second.dart';
import 'custom_top_section_third.dart';

class TopCollectionSection extends StatelessWidget {
  const TopCollectionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
             AppStrings.topCollections,
              style: AppTextStyles.font20BlackRegular,
            ),
            Spacer(),
            GestureDetector(
              onTap: () {},
              child: Text(
                'Show all',
                style: AppTextStyles.font13GreyMedium,
              ),
            ),
          ],
        ),
        20.vs,
        CustomTopSectionFirst(),
        15.vs,
        CustomTopSectionSecond(),
        15.vs,
        Row(
          children: [
            CustomTopSectionThird(),
            10.hs,
            CustomTopSectionThird(
              isReversed: true,
            )
          ],
        ),
      ],
    );
  }
}
