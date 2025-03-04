import '../../core/helpers/public_imports.dart';
import '../../core/widgets/app_custom_app_bar.dart';
import '../../core/widgets/app_custom_button.dart';
import 'widgets/cart_list_view.dart';
import 'widgets/cart_price_items_widget.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppCustomAppBar(title: AppStrings.yourCart),
      body: Padding(
        padding: 20.ph,
        child: SingleChildScrollView(
          child: Column(
            children: [
              30.hs,
              CartListView(),
              CartPriceItemsWidget(),
              AppCustomButton(
                onPressed: () {},
                text: AppStrings.proceedToCheckout,
              ),
              25.vs,
            ],
          ),
        ),
      ),
    );
  }
}
