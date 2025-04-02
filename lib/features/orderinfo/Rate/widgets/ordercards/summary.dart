import 'package:gem_store_app/core/helpers/public_imports.dart';
import '../../../models/myordersmodel.dart';

class OrderSummary extends StatelessWidget {
  final OrdersModel order;
  const OrderSummary({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        displayPaymentDetails(
          title:"Quantity:",
          value: order.getQuantity(), 
        ),
        displayPaymentDetails(
          title:"Subtotal:",
          value: order.getSubtotal(), 
        ),
       
      ],
    );
  }

  Row displayPaymentDetails({required String title ,required num value}) {
    return Row(
        crossAxisAlignment:title=="Quantity:"? CrossAxisAlignment.start : CrossAxisAlignment.end,
        children: [
          Text(title, style: AppTextStyles.font20GreyLight),
          Text("$value",
              style:  TextStyle(fontSize: 20.sp)),
        ],
      );
  }
}
