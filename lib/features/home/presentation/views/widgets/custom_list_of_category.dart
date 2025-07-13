import 'package:flutter/material.dart';

import '../../../../../core/utils/app_assets.dart';
import 'custom_category.dart';

class CustomListOfCategory extends StatelessWidget {
  const CustomListOfCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CustomCategory(
          index: 0,
          image: AppAssets.women,
          title: 'Women',
        ),
        CustomCategory(
          index: 1,
          image: AppAssets.men,
          title: 'Men',
        ),
        CustomCategory(
          index: 2,
          image: AppAssets.access,
          title: 'Accessories',
        ),
        CustomCategory(
          index: 3,
          image: AppAssets.beauty,
          title: 'Beauty',
        ),
      ],
    );
  }
}
