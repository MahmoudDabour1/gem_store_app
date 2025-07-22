import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../../../../core/helpers/public_imports.dart';
import '../../../../data/models/featured_products_model.dart';
import '../../../controller/home_cubit.dart';
import 'custom_feature_products.dart';
import 'featured_product_shimmer_single_item.dart';

class FeaturedProductsListView extends StatelessWidget {
  const FeaturedProductsListView({super.key});

  @override
  Widget build(BuildContext context) {
    final pagingController = context.read<HomeCubit>().featuredPagingController;

    return PagedListView<int, FeaturedProductsModel>(
      pagingController: pagingController,
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(left: 16.w),
      builderDelegate: PagedChildBuilderDelegate<FeaturedProductsModel>(
        itemBuilder: (context, product, index) {
          return Padding(
            padding: EdgeInsets.only(right: 12.w),
            child: CustomFeatureProduct(
              featuredProductsModel: product,
            ),
          );
        },
        firstPageProgressIndicatorBuilder: (_) =>
            FeaturedProductShimmerSingleItem(),
        newPageProgressIndicatorBuilder: (_) =>
            FeaturedProductShimmerSingleItem(),
        noItemsFoundIndicatorBuilder: (_) => const Center(
          child: Text("No featured products found"),
        ),
        firstPageErrorIndicatorBuilder: (_) => const Center(
          child: Text("Something went wrong loading featured products."),
        ),
      ),
    );
  }
}
