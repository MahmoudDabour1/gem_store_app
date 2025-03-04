import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/features/orderinfo/Rate/widgets/ordercards/detalbuttom.dart';

import '../../../../../core/utils/app_text_styles.dart';
import '../../../models/myordersmodel.dart';

class OrderHeader extends StatelessWidget {
  final OrdersModel order;
  const OrderHeader({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    DateTime today = DateTime.now();
    String dateStr = "${today.day}-${today.month}-${today.year}";

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Order #${order.getOrderNumber()}",
            style: AppTextStyles.font25BlackRegular),
        Text(dateStr, style: AppTextStyles.font20GreyLight),
      ],
    );
  }
}

class TrackingInfo extends StatelessWidget {
  final OrdersModel order;
  const TrackingInfo({required this.order});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Tracking number:", style: AppTextStyles.font20GreyLight),
        Text(" ${order.getTrackingNumber()}",
            style: const TextStyle(fontSize: 20)),
      ],
    );
  }
}

class OrderStatusAndDetailsButton extends StatelessWidget {
  final OrdersModel order;
  OrderStatusAndDetailsButton({required this.order});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        OrderStatus(order: order),
        DetailsButton(order: order),
      ],
    );
  }
}

class OrderStatus extends StatelessWidget {
  final OrdersModel order;
  const OrderStatus({required this.order});

  @override
  Widget build(BuildContext context) {
    return Text(
      order is OrderPending
          ? "Pending"
          : order is OrderDelivered
              ? "Delivered"
              : "Canceled",
      style: TextStyle(
        color: order is OrderPending
            ? const Color(0xFFCF6112)
            : order is OrderDelivered
                ? const Color(0xFF009154)
                : const Color(0xFFC40000),
        fontSize: 20.sp,
      ),
    );
  }
}
