import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/utils/app_text_styles.dart';
import 'package:gem_store_app/features/home/presentation/views/widgets/custom_top_section_first.dart';
import 'package:gem_store_app/features/home/presentation/views/widgets/custom_top_section_second.dart';
import 'package:gem_store_app/features/home/presentation/views/widgets/custom_top_section_third.dart';

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
              'Top Collections',
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
        SizedBox(height: 20.h),
        CustomTopSectionFirst(),
        SizedBox(height: 15.h),
        CustomTopSectionSecond(),
        SizedBox(height: 15.h),
        Row(
          children: [
            CustomTopSectionThird(),
            SizedBox(width: 10.w),
            CustomTopSectionThird(
              isReversed: true,
            )
          ],
        ),
      ],
    );
  }
}
