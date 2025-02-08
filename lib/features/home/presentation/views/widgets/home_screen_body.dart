import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/widgets/custom_app_bar.dart';
import 'package:gem_store_app/features/home/presentation/views/widgets/collection_section.dart';
import 'package:gem_store_app/features/home/presentation/views/widgets/custom_list_of_category.dart';
import 'package:gem_store_app/features/home/presentation/views/widgets/custom_list_of_feature_products.dart';
import 'package:gem_store_app/features/home/presentation/views/widgets/custom_feature_products.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 20.h),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(),
            SizedBox(height: 20.h),
            CustomListOfCategory(),
            SizedBox(height: 30.h),
            CollectionSection(),
            SizedBox(height: 30.h),
            CustomListOfFeatureProducts(),
          ],
        ),
      ),
    );
  }
}
