import 'package:gem_store_app/core/helpers/public_imports.dart';
import 'package:gem_store_app/features/home/presentation/views/widgets/featured_products_widgets/sort_by_price_drop_down_button.dart';

import 'all_featured_products_bloc_builder.dart';

class AllFeaturedProductsScreen extends StatefulWidget {
  const AllFeaturedProductsScreen({
    super.key,
  });

  @override
  State<AllFeaturedProductsScreen> createState() =>
      _AllFeaturedProductsScreenState();
}

class _AllFeaturedProductsScreenState extends State<AllFeaturedProductsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Featured Products'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: AppColors.blackColor,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              20.vs,
              SortByPriceDropDownButton(),
              20.vs,
              Expanded(child: AllFeaturedProductsBlocBuilder()),
            ],
          ),
        ),
      ),
    );
  }
}
