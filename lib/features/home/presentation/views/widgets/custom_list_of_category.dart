import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gem_store_app/core/utils/app_assets.dart';
import 'package:gem_store_app/features/home/presentation/manager/cubit/category_cubit.dart';
import 'package:gem_store_app/features/home/presentation/views/widgets/custom_category.dart';

class CustomListOfCategory extends StatelessWidget {
  const CustomListOfCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CategoryCubit(),
      child: Row(
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
      ),
    );
  }
}
