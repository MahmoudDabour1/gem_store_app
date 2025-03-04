import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/helpers/sizes_utils_extensions.dart';
import 'package:gem_store_app/core/utils/app_strings.dart';
import '../../../../../core/utils/app_text_styles.dart';
import 'custom_recommended_product.dart';

class CustomListOfRecommendedProduct extends StatelessWidget {
  const CustomListOfRecommendedProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            children: [
              Text(
                AppStrings.recommended,
                style: AppTextStyles.font20BlackRegular,
              ),
              Spacer(),
              GestureDetector(
                onTap: () {},
                child: Text(
                  AppStrings.showAll,
                  style: AppTextStyles.font13GreyMedium,
                ),
              ),
            ],
          ),
        ),
        20.vs,
        SizedBox(
          height: 66.h,
          //width: 126.w,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 25),
                child: CustomRecommendedProduct(),
              );
            },
          ),
        ),
      ],
    );
  }
}
