import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/helpers/sizes_utils_extensions.dart';
import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';

class NewCollectionSection extends StatelessWidget {
  const NewCollectionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 157.h,
      color: AppColors.lightGreyColor,
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
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
                        'NEW COLLECTION',
                        style: AppTextStyles.font12GreyRegular,
                      ),
                    ],
                  ),
                  15.vs,
                  Flexible(
                      child: Text('HANG OUT & PARTY ',
                          style: AppTextStyles.font20GreyLight)),
                ],
              ),
            ),
            20.hs,
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 132.h,
                  width: 132.w,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color:
                          AppColors.firstGreyContainerColor.withOpacity(0.5)),
                ),
                Container(
                  height: 100.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.firstGreyContainerColor),
                ),
                Image.asset(
                  AppAssets.newCollecpng,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
