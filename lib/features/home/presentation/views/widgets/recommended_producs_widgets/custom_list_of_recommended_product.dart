import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/helpers/sizes_utils_extensions.dart';
import 'package:gem_store_app/core/utils/app_strings.dart';
import 'package:gem_store_app/features/home/data/models/recommended_product_model.dart';
import 'package:gem_store_app/features/home/presentation/controller/home_cubit.dart';
import 'package:gem_store_app/features/home/presentation/controller/home_state.dart';
import 'package:gem_store_app/features/home/presentation/views/widgets/recommended_producs_widgets/list_of_shimmer_recommended_products.dart';
import 'package:gem_store_app/features/home/presentation/views/widgets/recommended_producs_widgets/custom_recommended_product.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import '../../../../../../core/utils/app_text_styles.dart';

class CustomListOfRecommendedProduct extends StatelessWidget {
  const CustomListOfRecommendedProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is RecommendedProductsLoading ||
          current is RecommendedProductsSuccess ||
          current is RecommendedProductsFailure,
      builder: (context, state) {
        final cubit = context.read<HomeCubit>();
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
            20.vs,
            SizedBox(
                height: 160.h,
                child: state is RecommendedProductsLoading
                    ? const ListOfShimmerRecommendedProducts()
                    : state is RecommendedProductsFailure
                        ? Center(
                            child: Text(state.errorMessage),
                          )
                        : state is RecommendedProductsSuccess
                            ? PagedListView<int, RecommendedProductModel>(
                                state: PagingState(
                                  pages: state.pages,
                                  keys: state.keys,
                                  hasNextPage: state.hasNextPage,
                                  isLoading: state.isLoading,
                                  error: state.error,
                                ),
                                fetchNextPage: () =>
                                    cubit.fetchNextPageOfRecommendedProducts(
                                  categoryId: cubit
                                      .catergoryModel[cubit.currentIndex].id,
                                ),
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                physics: const ClampingScrollPhysics(),
                                builderDelegate: PagedChildBuilderDelegate<
                                    RecommendedProductModel>(
                                  itemBuilder: (context, item, index) =>
                                      Padding(
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
                                      const Center(
                                          child: Text('No products found')),
                                  firstPageErrorIndicatorBuilder: (_) =>
                                      const Center(
                                          child:
                                              Text('Failed to load products')),
                                ),
                              )
                            : ListOfShimmerRecommendedProducts()),
          ],
        );
      },
    );
  }
}
