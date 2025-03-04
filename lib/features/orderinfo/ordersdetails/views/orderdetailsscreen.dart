import 'package:flutter/material.dart';
import '../../../../core/widgets/app_custom_app_bar.dart';
import '../../models/myordersmodel.dart';
import '../widgets/orderdatailscard.dart';

class Orderdetailsscreen extends StatefulWidget {
  final OrdersModel order;
  const Orderdetailsscreen({super.key, required this.order});

  @override
  State<Orderdetailsscreen> createState() => _OrderdetailsscreenState();
}

class _OrderdetailsscreenState extends State<Orderdetailsscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppCustomAppBar(title: "Order #${widget.order.getOrderNumber()}"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Orderdatailscard(order: widget.order),
          ],
        ),
      ),
    );
  }
}
