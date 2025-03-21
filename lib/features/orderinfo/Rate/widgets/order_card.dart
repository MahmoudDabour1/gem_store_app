import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/features/orderinfo/Rate/widgets/ordercards/order.dart';
// import '../../../../core/utils/app_text_styles.dart';
import '../../../../core/utils/spacing.dart';
import '../../models/myordersmodel.dart';
// import '../../ordersdetails/views/orderdetailsscreen.dart';
import 'ordercards/summary.dart';

class OrderCard extends StatelessWidget {
  final OrdersModel order;
  const OrderCard({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.all(20),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            OrderHeader(order: order),
            verticalSpace(10),
            TrackingInfo(order: order),
            verticalSpace(10),
            OrderSummary(order: order),
            verticalSpace(10),
            OrderStatusAndDetailsButton(order: order),
          ],
        ),
      ),
    );
  }
}
