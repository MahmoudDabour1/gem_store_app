import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gem_store_app/features/home/presentation/views/widgets/featured_products_widgets/all_featured_products_grid_view_item.dart';

import '../../../../../../core/helpers/public_imports.dart';
import '../../../controller/home_cubit.dart';
import '../../../controller/home_state.dart';

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
    return GridView.builder(
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16.w,
        mainAxisSpacing: 16.h,
        childAspectRatio: 1.1 / 1.5,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        return AllFeaturedProductsGridViewItem(
          featuredProductsModel: products[index],
        );
      },
    );
  }

  Widget setupError(final String error) {
    return Center(child: Text('Error: $error'));
  }

  Widget setupLoading() {
    return const Center(child: CircularProgressIndicator());
  }
}
