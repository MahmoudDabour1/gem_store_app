import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/helpers/extenstions.dart';
import 'package:gem_store_app/core/helpers/sizes_utils_extensions.dart';
import 'package:gem_store_app/core/utils/app_strings.dart';
import 'package:gem_store_app/features/home/presentation/views/widgets/featured_products_widgets/featured_products_bloc_builder.dart';

import '../../../../../../core/routing/routes.dart';
import '../../../../../../core/utils/app_text_styles.dart';

class CustomListOfFeatureProducts extends StatelessWidget {
  const CustomListOfFeatureProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0.w),
          child: Row(
            children: [
              Text(
                AppStrings.featureProducts,
                style: AppTextStyles.font20BlackRegular,
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  context.pushNamed(Routes.allFeaturedProductsScreen);
                },
                child: Text(
                  AppStrings.showAll,
                  style: AppTextStyles.font13GreyMedium,
                ),
              ),
            ],
          ),
        ),
        20.vs,

        FeaturedProductsBlocBuilder(),
      ],
    );
  }
}
