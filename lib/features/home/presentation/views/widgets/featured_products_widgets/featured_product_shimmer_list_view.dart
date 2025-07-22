
import '../../../../../../core/helpers/public_imports.dart';
import 'featured_product_shimmer_single_item.dart';

class FeaturedProductShimmerListView extends StatelessWidget {
  const FeaturedProductShimmerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 5,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(
            left: 25.w,
          ),
          child: FeaturedProductShimmerSingleItem(),
        );
      },
    );
  }
}
