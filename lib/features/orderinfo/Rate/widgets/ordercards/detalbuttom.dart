import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_styles.dart';
import '../../../models/myordersmodel.dart';
import '../../../ordersdetails/views/orderdetailsscreen.dart';

class DetailsButton extends StatelessWidget {
  final OrdersModel order;
  const DetailsButton({required this.order});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => Orderdetailsscreen(order: order)),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        side: const BorderSide(width: 1, color: Color(0xFF777E90)),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(23)),
      ),
      child: Text('Details', style: AppTextStyles.font16DarkBold),
    );
  }
}
