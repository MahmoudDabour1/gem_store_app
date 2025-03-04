import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/helpers/sizes_utils_extensions.dart';
import 'package:gem_store_app/features/home/presentation/views/widgets/image_container_of_second_top_section.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';

class CustomTopSectionSecond extends StatelessWidget {
  const CustomTopSectionSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 209.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.lightGreyColor,
      ),
      child: Padding(
        padding: 18.all,
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 12.h,
                        width: 0.79.w,
                        color: AppColors.lightGreyText12Color,
                      ),
                      10.hs,
                      Text(
                        'Sale up to 40%',
                        style: AppTextStyles.font12GreyRegular,
                      ),
                    ],
                  ),
                  15.vs,
                  Flexible(
                    child: Text('Most sexy & fabulous design',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                        style: AppTextStyles.font20GreyMedium),
                  ),
                ],
              ),
            ),
            50.hs,
            ImageContainerOfSecondTopSection(),
          ],
        ),
      ),
    );
  }
}
