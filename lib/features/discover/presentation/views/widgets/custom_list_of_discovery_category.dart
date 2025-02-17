import 'package:flutter/material.dart';
import '../../../../../core/helpers/sizes_utils_extensions.dart';
import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/app_colors.dart';
import 'discover_category_item.dart';

class ListOfDiscoveryCategory extends StatelessWidget {
  const ListOfDiscoveryCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DiscoverCategoryItem(
          colorForContainer: AppColors.clothingColor,
          title: 'CLOTHING',
          image: AppAssets.clothingCategory,
          color: AppColors.ellipseColorForClothing,
        ),
        15.hs,
        DiscoverCategoryItem(
          colorForContainer: AppColors.accessoriesColor,
          title: 'ACCESSORIES',
          image: AppAssets.accessCategory,
          color: AppColors.ellipseColorForAccessories,
        ),
        15.hs,
        DiscoverCategoryItem(
            colorForContainer: AppColors.shoesColor,
            title: 'SHOES',
            image: AppAssets.shoes,
            color: AppColors.ellipseColorForShoes),
        15.hs,
        DiscoverCategoryItem(
          colorForContainer: AppColors.collectionColor,
          title: 'COLLECTION',
          image: AppAssets.clo,
          color: AppColors.ellipseColorForCollection,
        ),
      ],
    );
  }
}
