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
        Row(
          children: [
            Text(
              'Feature Products',
              style: AppTextStyles.font20,
            ),
            Spacer(),
            GestureDetector(
              onTap: () {},
              child: Text(
                'Show all',
                style: AppTextStyles.font13,
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        SizedBox(
          height: 227.h,
          //width: 126.w,
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 18.0),
                  child: CustomFeatureProduct(),
                );
              }),
        ),
      ],
    );
  }
}
