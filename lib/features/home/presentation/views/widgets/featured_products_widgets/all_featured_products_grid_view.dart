import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../../../../core/helpers/public_imports.dart';
import '../../../../data/models/featured_products_model.dart';
import '../../../controller/home_cubit.dart';
import 'all_featured_products_grid_view_item.dart';

class AllFeaturedProductsGridView extends StatelessWidget {
  // final List<FeaturedProductsModel> products;
  const AllFeaturedProductsGridView({super.key});

  @override
  Widget build(BuildContext context) {
    final pagingController = context.read<HomeCubit>().pagingController;

    return PagedGridView<int, FeaturedProductsModel>(
      pagingController: pagingController,
      physics: const BouncingScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16.w,
        mainAxisSpacing: 16.h,
        childAspectRatio: 0.99 / 1.5,
      ),
      builderDelegate: PagedChildBuilderDelegate<FeaturedProductsModel>(
        itemBuilder: (context, product, index) {
          return AllFeaturedProductsGridViewItem(
            featuredProductsModel: product,
          );
        },
        firstPageProgressIndicatorBuilder: (_) =>
            const Center(child: CircularProgressIndicator()),
        newPageProgressIndicatorBuilder: (_) =>
            const Center(child: CircularProgressIndicator()),
        noItemsFoundIndicatorBuilder: (_) =>
            const Center(child: Text("No products found")),
        firstPageErrorIndicatorBuilder: (_) =>
            const Center(child: Text("Something went wrong loading products.")),
      ),
    ); //   GridView.builder(
    //   shrinkWrap: true,
    //   physics: BouncingScrollPhysics(),
    //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //     crossAxisCount: 2,
    //     crossAxisSpacing: 16.w,
    //     mainAxisSpacing: 16.h,
    //     childAspectRatio: 1.1 / 1.5,
    //   ),
    //   itemCount: products.length,
    //   itemBuilder: (context, index) {
    //     return AllFeaturedProductsGridViewItem(
    //       featuredProductsModel: products[index],
    //     );
    //   },
    // );
  }
}
