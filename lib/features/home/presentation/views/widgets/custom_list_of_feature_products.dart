import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/utils/app_text_styles.dart';
import 'package:gem_store_app/features/home/presentation/views/widgets/custom_feature_products.dart';

class CustomListOfFeatureProducts extends StatelessWidget {
  const CustomListOfFeatureProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            children: [
              Text(
                'Feature Products',
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
        ),
        SizedBox(height: 20),
        SizedBox(
          height: 240.h,
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(
                    left: 25,
                  ),
                  child: CustomFeatureProduct(),
                );
              }),
        ),
      ],
    );
  }
}
