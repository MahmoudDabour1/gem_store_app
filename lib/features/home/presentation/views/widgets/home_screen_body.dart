import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/helpers/sizes_utils_extensions.dart';
import 'package:gem_store_app/core/utils/app_strings.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/widgets/custom_app_bar.dart';
import 'collection_section.dart';
import 'custom_list_of_category.dart';
import 'custom_list_of_recommended_product.dart';
import 'featured_products_widgets/custom_list_of_feature_products.dart';
import 'new_collection_section.dart';
import 'top_collection_section.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 25.h),
            child: Column(
              children: [
                CustomAppBar(
                  title: AppStrings.gemstore,
                  textStyle: AppTextStyles.font20BlackBold,
                ),
                25.vs,
                CustomListOfCategory(),
                30.vs,
                CollectionSection(),
              ],
            ),
          ),
          20.vs,
          CustomListOfFeatureProducts(),
          10.vs,
          NewCollectionSection(),
          20.vs,
          CustomListOfRecommendedProduct(),
          20.vs,
          Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 20.h),
                child: TopCollectionSection(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
