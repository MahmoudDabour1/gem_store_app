import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gem_store_app/core/helpers/public_imports.dart';

import '../../../controller/home_cubit.dart';
import '../../../controller/home_state.dart';
import 'featured_product_shimmer_list_view.dart';
import 'featured_products_list_view.dart';

class FeaturedProductsBlocBuilder extends StatefulWidget {
  const FeaturedProductsBlocBuilder({super.key});

  @override
  State<FeaturedProductsBlocBuilder> createState() =>
      _FeaturedProductsBlocBuilderState();
}

class _FeaturedProductsBlocBuilderState
    extends State<FeaturedProductsBlocBuilder> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 240.h,
        child: BlocBuilder<HomeCubit, HomeState>(
          buildWhen: (previous, current) =>
              current is FeaturedProductsLoading ||
              current is FeaturedProductsSuccess ||
              current is FeaturedProductsFailure,
          builder: (context, state) {
            return state.maybeWhen(
              featuredProductsLoading: () => setupLoading(),
              featuredProductsSuccess: (products) =>
                  setupSuccessWidget(products),
              featuredProductsFailure: (error) => setupError(error),
              orElse: () => const Center(child: CircularProgressIndicator()),
            );
          },
        ));
  }

  Widget setupSuccessWidget(products) {
    return FeaturedProductsListView(products: products);
  }

  Widget setupError(final String error) {
    return Center(child: Text('Error: $error'));
  }

  Widget setupLoading() {
    return FeaturedProductShimmerListView();
  }
}
