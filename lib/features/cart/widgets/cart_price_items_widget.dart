import '../../../core/helpers/public_imports.dart';
import 'cart_price_item.dart';

class CartPriceItemsWidget extends StatelessWidget {
  const CartPriceItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CartPriceItem(
            firstText: AppStrings.productPrice, lastText: AppStrings.price110),
        Divider(),
        CartPriceItem(
            firstText: AppStrings.shipping, lastText: AppStrings.freeShip),
        Divider(),
        CartPriceItem(
          firstText: AppStrings.total,
          lastText: AppStrings.price110,
          firstTextStyle: AppTextStyles.font18BlackSemiBold,
          lastTextStyle: AppTextStyles.font18BlackSemiBold,
        ),
        28.hs,
      ],
    );
  }
}
