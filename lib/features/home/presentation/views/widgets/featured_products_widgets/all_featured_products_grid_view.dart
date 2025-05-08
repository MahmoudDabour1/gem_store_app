import '../../../../../../core/helpers/public_imports.dart';
import '../../../../data/models/featured_products_model.dart';
import 'all_featured_products_grid_view_item.dart';

class AllFeaturedProductsGridView extends StatelessWidget {
  final List<FeaturedProductsModel> products;
  const AllFeaturedProductsGridView({super.key,required this.products});

  @override
  Widget build(BuildContext context) {
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
}
