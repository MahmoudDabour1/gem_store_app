import 'package:flutter/material.dart';
import 'package:gem_store_app/core/utils/app_assets.dart';
import 'package:gem_store_app/features/home/presentation/views/widgets/custom_category.dart';

class CustomListOfCategory extends StatelessWidget {
  const CustomListOfCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CustomCategory(
          image: AppAssets.women,
          title: 'Women',
        ),
        CustomCategory(
          image: AppAssets.men,
          title: 'Men',
        ),
        CustomCategory(
          image: AppAssets.access,
          title: 'Accessories',
        ),
        CustomCategory(
          image: AppAssets.beauty,
          title: 'Beauty',
        ),
      ],
    );
  }
}
