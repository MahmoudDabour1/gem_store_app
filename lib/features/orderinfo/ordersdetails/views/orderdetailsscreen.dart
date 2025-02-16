import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/widgets/app_custom_app_bar.dart';
import 'package:gem_store_app/features/orderinfo/models/myordersmodel.dart';
import 'package:gem_store_app/features/orderinfo/ordersdetails/widgets/orderdatailscard.dart';

class Orderdetailsscreen extends StatefulWidget {
  final Ordersmodel order;
  const Orderdetailsscreen({super.key, required this.order});

  @override
  State<Orderdetailsscreen> createState() => _OrderdetailsscreenState();
}

class _OrderdetailsscreenState extends State<Orderdetailsscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppCustomAppBar(title: "Order #${widget.order.getordernumber()}"),
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
