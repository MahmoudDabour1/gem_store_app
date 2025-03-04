import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/helpers/sizes_utils_extensions.dart';
import '../../../../../core/helpers/extenstions.dart';
import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_text_styles.dart';

import '../../../../../core/routing/routes.dart';

class CustomFeatureProduct extends StatelessWidget {
  const CustomFeatureProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(Routes.productDetailsScreen);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.r),
            //child: SvgPicture.asset(AppAssets.feature),
            child: Image.asset(
              AppAssets.feature2,
              fit: BoxFit.cover,
            ),
          ),
          10.vs,
          Text(
            'Long Sleeve Dress',
            style: AppTextStyles.font12Darkmedium,
          ),
          5.vs,
          Text(
            '\$ ${39.99}',
            style: AppTextStyles.font16DarkBold,
          )
        ],
      ),
    );
  }
}
