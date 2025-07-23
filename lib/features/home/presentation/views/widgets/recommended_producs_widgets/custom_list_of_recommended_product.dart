import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/helpers/sizes_utils_extensions.dart';
import 'package:gem_store_app/core/utils/app_strings.dart';
import 'package:gem_store_app/features/home/data/models/recommended_product_model.dart';
import 'package:gem_store_app/features/home/presentation/controller/home_cubit.dart';
import 'package:gem_store_app/features/home/presentation/views/widgets/recommended_producs_widgets/list_of_shimmer_recommended_products.dart';
import 'package:gem_store_app/features/home/presentation/views/widgets/recommended_producs_widgets/custom_recommended_product.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import '../../../../../../core/utils/app_text_styles.dart';

class CustomListOfRecommendedProduct extends StatelessWidget {
  const CustomListOfRecommendedProduct({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<HomeCubit>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: 25.ph,
          child: Row(
            children: [
              Text(
                AppStrings.recommended,
                style: AppTextStyles.font20BlackRegular,
              ),
              const Spacer(),
              Text(
                AppStrings.showAll,
                style: AppTextStyles.font13GreyMedium,
              ),
            ],
          ),
        ),
        //  20.vs,
        SizedBox(
          height: 150.h,
          child: PagedListView<int, RecommendedProductModel>(
            pagingController: cubit.pagingController,
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            builderDelegate: PagedChildBuilderDelegate<RecommendedProductModel>(
              itemBuilder: (context, item, index) => Padding(
                padding: const EdgeInsets.only(left: 25),
                child: CustomRecommendedProduct(
                  recommendedProductModel: item,
                ),
              ),
              newPageProgressIndicatorBuilder: (_) =>
                  const ListOfShimmerRecommendedProducts(),
              firstPageProgressIndicatorBuilder: (_) =>
                  const ListOfShimmerRecommendedProducts(),
              noItemsFoundIndicatorBuilder: (_) =>
                  const Center(child: Text('No products found')),
              firstPageErrorIndicatorBuilder: (_) =>
                  const Center(child: Text('Failed to load products')),
            ),
          ),
        ),
      ],
    );
  }
}
