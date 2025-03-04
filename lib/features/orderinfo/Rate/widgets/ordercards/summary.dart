import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_styles.dart';
import '../../../models/myordersmodel.dart';

class OrderSummary extends StatelessWidget {
  final OrdersModel order;
  const OrderSummary({required this.order});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Quantity:", style: AppTextStyles.font20GreyLight),
            Text("${order.getQuantity()}",
                style: const TextStyle(fontSize: 20)),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text("Subtotal:", style: AppTextStyles.font20GreyLight),
            Text("${order.getSubtotal()}",
                style: const TextStyle(fontSize: 20)),
          ],
        ),
      ],
    );
  }
}
