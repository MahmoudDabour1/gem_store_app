import 'package:flutter/material.dart';
import 'package:gem_store_app/features/orderinfo/models/myordersmodel.dart';
import 'order_card.dart';

class OrderListView extends StatelessWidget {
  final List<Ordersmodel> orders;
  const OrderListView({super.key, required this.orders});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: orders.length,
      itemBuilder: (context, index) {
        return OrderCard(order: orders[index]);
      },
    );
  }
}
