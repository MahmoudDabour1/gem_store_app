import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/utils/app_fonts.dart';
import 'package:gem_store_app/core/utils/app_text_styles.dart';
import 'package:gem_store_app/features/orderinfo/models/myordersmodel.dart';
import 'package:gem_store_app/features/orderinfo/ordersdetails/views/orderdetailsscreen.dart';

class OrderCard extends StatelessWidget {
  final Ordersmodel order;
  const OrderCard({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    DateTime today = DateTime.now();
    String dateStr = "${today.day}-${today.month}-${today.year}";

    return Card(
      elevation: 5,
      shadowColor: const Color.fromARGB(255, 245, 245, 245),
      margin: const EdgeInsets.all(20),
      color: Colors.white,
      child: Container(
        width: 336,
        height: 182,
        padding: const EdgeInsets.only(left: 30, top: 13),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Order #${order.getordernumber()}",
                  style: AppTextStyles.font25BlackRegular,
                ),
                const SizedBox(
                  width: 125,
                ),
                Text(
                  dateStr,
                  style: AppTextStyles.font20GreyLight,
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                Text(
                  "Tracking number:",
                  style: AppTextStyles.font20GreyLight,
                ),
                Text(
                  " ${order.gettrackingnumber()}",
                  style: const TextStyle(fontSize: 20),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                Text(
                  "Quantity: ",
                  style: AppTextStyles.font20GreyLight,
                ),
                Text(" ${order.getquantity()}",
                    style: const TextStyle(fontSize: 20)),
                const SizedBox(
                  width: 100,
                ),
                Text(
                  "Subtotal: ",
                  style: AppTextStyles.font20GreyLight,
                ),
                Text("${order.getsubtotal()}",
                    style: const TextStyle(fontSize: 20)),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Text(
                  order is OrdPending
                      ? "Pending"
                      : order is OrdDelivered
                          ? "Delivered"
                          : "Canceled",
                  style: TextStyle(
                    color: order is OrdPending
                        ? const Color(0xFFCF6112)
                        : order is OrdDelivered
                            ? const Color(0xFF009154)
                            : const Color(0xFFC40000),
                    fontSize: 20.sp,
                    fontFamily: AppFonts.productSansLight,
                  ),
                ),
                const SizedBox(
                  width: 115,
                ),
                Container(
                  width: 100,
                  height: 35,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side:
                          const BorderSide(width: 1, color: Color(0xFF777E90)),
                      borderRadius: BorderRadius.circular(17.5),
                    ),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              Orderdetailsscreen(order: order),
                        ),
                      );
                    },
                    child: Text(
                      'Details',
                      style: AppTextStyles.font16DarkBold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
