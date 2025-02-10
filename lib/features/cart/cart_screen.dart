import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/theming/app_styles.dart';
import 'package:gem_store_app/core/utils/spacing.dart';
import 'package:gem_store_app/core/widgets/app_custom_button.dart';
import 'package:gem_store_app/core/widgets/custom_app_bar.dart';
import 'package:gem_store_app/features/cart/widgets/cart_list_view.dart';
import 'package:gem_store_app/features/cart/widgets/cart_price_item.dart';
import 'package:gem_store_app/features/cart/widgets/cart_price_items_widget.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Your Cart"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              verticalSpace(30),
              CartListView(),
              CartPriceItemsWidget(),
              AppCustomButton(onPressed: () {}, text: "Proceed to checkout"),
              verticalSpace(25),
            ],
          ),
        ),
      ),
    );
  }
}
