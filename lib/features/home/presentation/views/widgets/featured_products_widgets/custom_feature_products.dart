import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/helpers/sizes_utils_extensions.dart';
import 'package:gem_store_app/features/home/data/models/featured_products_model.dart';

import '../../../../../../core/helpers/extenstions.dart';
import '../../../../../../core/routing/routes.dart';
import '../../../../../../core/utils/app_text_styles.dart';
import 'featured_products_cached_network_image.dart';

class CustomFeatureProduct extends StatelessWidget {
  final FeaturedProductsModel featuredProductsModel;

  const CustomFeatureProduct({
    super.key,
    required this.featuredProductsModel,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(Routes.productDetailsScreen);
      },
      child: SizedBox(
        height: 227.h,
        width: 126.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FeaturedProductsCachedNetworkImage(
              featuredProductsModel: featuredProductsModel,
            ),
            10.vs,
            Text(
              featuredProductsModel.title ?? '',
              style: AppTextStyles.font12Darkmedium,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
            5.vs,
            Text(
              '\$ ${featuredProductsModel.price ?? 0}',
              style: AppTextStyles.font16DarkBold,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            )
          ],
        ),
      ),
    );
  }
}
