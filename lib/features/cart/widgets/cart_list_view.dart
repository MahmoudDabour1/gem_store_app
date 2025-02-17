import 'package:flutter/material.dart';

import 'cart_list_view_item.dart';

class CartListView extends StatelessWidget {
  const CartListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      physics: NeverScrollableScrollPhysics(),
      //// TODO: Avoid using `shrinkWrap` here, as it may cause memory leaks and UI glitches. Consider an alternative solution.
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return CartListViewItem();
      },
    );
  }
}
