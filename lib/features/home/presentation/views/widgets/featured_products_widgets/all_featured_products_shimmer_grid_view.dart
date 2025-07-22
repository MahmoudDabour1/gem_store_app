import '../../../../../../core/helpers/public_imports.dart';
import 'all_featured_product_shimmer_single_item.dart';

class AllFeaturedProductsShimmerGridView extends StatelessWidget {
  const AllFeaturedProductsShimmerGridView({super.key});

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
      itemCount: 8,
      itemBuilder: (context, index) {
        return AllFeaturedProductShimmerSingleItem();
      },
    );
  }
}
