import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../core/helpers/public_imports.dart';
import '../../../controller/home_cubit.dart';
import '../../../controller/home_state.dart';
import 'all_featured_products_grid_view.dart';
import 'all_featured_products_shimmer_grid_view.dart';

class AllFeaturedProductsBlocBuilder extends StatelessWidget {
  const AllFeaturedProductsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return state.maybeWhen(
          featuredProductsLoading: () => setupLoading(),
          featuredProductsSuccess: (products) => setupSuccessWidget(products),
          featuredProductsFailure: (error) => setupError(error),
          orElse: () => const Center(child: CircularProgressIndicator()),
        );
      },
    );
  }

  Widget setupSuccessWidget(products) {
    return AllFeaturedProductsGridView(
      products: products,
    );
  }

  Widget setupError(final String error) {
    return Center(child: Text('Error: $error'));
  }

  Widget setupLoading() {
    return AllFeaturedProductsShimmerGridView();
  }
}
