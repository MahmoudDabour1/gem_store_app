import 'package:gem_store_app/features/home/data/models/featured_products_model.dart';
import 'package:gem_store_app/features/home/presentation/views/widgets/featured_products_widgets/featured_products_cached_network_image.dart';

import '../../../../../../core/helpers/public_imports.dart';

class AllFeaturedProductsGridViewItem extends StatelessWidget {
  final FeaturedProductsModel featuredProductsModel;

  const AllFeaturedProductsGridViewItem(
      {super.key, required this.featuredProductsModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FeaturedProductsCachedNetworkImage(
          featuredProductsModel: featuredProductsModel,
          width: double.infinity,
          height: 150.h,
        ),
        10.vs,
        Text(
          featuredProductsModel.title ?? '',
          style: AppTextStyles.font12Darkmedium,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
        5.vs,
        Text(
          '\$ ${featuredProductsModel.price ?? 0}',
          style: AppTextStyles.font16DarkBold,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        )
      ],
    );
  }
}
