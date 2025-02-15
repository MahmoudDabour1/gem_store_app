import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/utils/app_assets.dart';
import 'package:gem_store_app/core/utils/app_colors.dart';
import 'package:gem_store_app/features/discover/presentation/views/widgets/discover_category_item.dart';

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
        SizedBox(height: 15.h),
        DiscoverCategoryItem(
          colorForContainer: AppColors.accessoriesColor,
          title: 'ACCESSORIES',
          image: AppAssets.accessCategory,
          color: AppColors.ellipseColorForAccessories,
        ),
        SizedBox(height: 15.h),
        DiscoverCategoryItem(
            colorForContainer: AppColors.shoesColor,
            title: 'SHOES',
            image: AppAssets.shoes,
            color: AppColors.ellipseColorForShoes),
        SizedBox(height: 15.h),
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
