import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/theming/app_styles.dart';
import '../../../core/utils/spacing.dart';
import 'cart_price_item.dart';

class CartPriceItemsWidget extends StatelessWidget {
  const CartPriceItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CartPriceItem(firstText: "Product price", lastText: "110"),
      Divider(),
      CartPriceItem(firstText: "Shipping", lastText: "FreeShip"),
      Divider(),
      CartPriceItem(
        firstText: "Total",
        lastText: "110",
        firstTextStyle: AppStyles.font18BlackSemiBold,
        lastTextStyle: AppStyles.font18BlackSemiBold,
      ),
      verticalSpace(28),
    ]);
  }
}
