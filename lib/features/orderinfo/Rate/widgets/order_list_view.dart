import 'package:flutter/material.dart';
import '../../models/myordersmodel.dart';
import 'order_card.dart';

class OrderListView extends StatelessWidget {
  final List<OrdersModel> orders;
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
