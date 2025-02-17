import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/widgets/custom_app_bar.dart';
import 'collection_section.dart';
import 'custom_list_of_category.dart';
import 'custom_list_of_feature_products.dart';
import 'custom_list_of_recommended_product.dart';
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
                  title: 'Gemstore',
                  textStyle: AppTextStyles.font20BlackBold,
                ),
                SizedBox(height: 25.h),
                CustomListOfCategory(),
                SizedBox(height: 30.h),
                CollectionSection(),
              ],
            ),
          ),
          SizedBox(height: 20.h),
          CustomListOfFeatureProducts(),
          SizedBox(height: 10.h),
          NewCollectionSection(),
          SizedBox(height: 20.h),
          CustomListOfRecommendedProduct(),
          SizedBox(height: 20.h),
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
