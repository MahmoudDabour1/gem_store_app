import '../../../../../../core/helpers/public_imports.dart';
import '../../../../data/models/featured_products_model.dart';
import 'custom_feature_products.dart';

class FeaturedProductsListView extends StatelessWidget {
  final List<FeaturedProductsModel> products;
  const FeaturedProductsListView({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: products.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(
            left: 25.w,
          ),
          child: CustomFeatureProduct(
            featuredProductsModel: products[index],
          ),
        );
      },
    );
  }
}
