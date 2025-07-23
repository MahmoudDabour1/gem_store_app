import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/helpers/sizes_utils_extensions.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_styles.dart';
import '../../../../core/widgets/bottom_nav_bar.dart';
import '../../Rate/views/ratescreen.dart';
import '../../models/myordersmodel.dart';
import '../../../track_order/track_order.dart';

class Orderdatailscard extends StatelessWidget {
  // TODO: please refactor this code , by norhan
  // TODO: you have many files and many folders please remove unnecessary , by norha
  final OrdersModel order;
  const Orderdatailscard({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        GestureDetector(
          onTap: () {
            if (order is OrderPending) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TrackOrderScreen(),
                ),
              );
            }
          },
          child: Card(
            color: AppColors.lightGreyText13RobotoColor,
            child: SizedBox(
              width: 327.w,
              height: 120.h,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        order is OrderPending
                            ? "Your order is on the way \nclick here to track your order"
                            : order is OrderDelivered
                                ? "Your order is delivered \nrate product to get 5 points"
                                : "Your order Canceld",
                        style: AppTextStyles.font20White,
                      ),
                    ),
                    SvgPicture.asset(
                      order is OrderPending
                          ? "assets/svgs/car.svg"
                          : order is OrderDelivered
                              ? "assets/svgs/gift.svg"
                              : "",
                      width: 50,
                      height: 50,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Card(
          elevation: 5,
          shadowColor: const Color.fromARGB(255, 245, 245, 245),
          margin: const EdgeInsets.all(20),
          color: const Color.fromARGB(255, 255, 255, 255),
          child: Container(
            width: 327,
            height: 114,
            // padding: 7.all,
            margin: 7.all,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Order Number:',
                      style: AppTextStyles.font20GreyLight,
                    ),
                    Text(
                      '${order.getOrderNumber()}',
                      style: AppTextStyles.font20BlackRegular,
                    ),
                  ],
                ),
                Spacer(),
                // const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Tracking Number:',
                      style: AppTextStyles.font20GreyLight,
                    ),
                    Text(
                      '${order.getTrackingNumber()}',
                      style: AppTextStyles.font20BlackRegular,
                    ),
                  ],
                ),
                Spacer(),
                // const SizedBox(height: 5),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Delivery Address:',
                      style: AppTextStyles.font20GreyLight,
                    ),
                    Spacer(),
                    Text(
                      order.getDeliveryAddress(),
                      style: AppTextStyles.font20BlackRegular,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Card(
          elevation: 5,
          shadowColor: const Color.fromARGB(255, 245, 245, 245),
          margin: const EdgeInsets.all(20),
          color: const Color.fromARGB(255, 255, 255, 255),
          child: Container(
            width: 335,
            height: 247,
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Maxi Dress",
                        style: AppTextStyles.font20BlackextraLight),
                    Text("x1", style: AppTextStyles.font20BlackextraLight),
                    Text("68.00", style: AppTextStyles.font20BlackextraLight),
                  ],
                ),
                Spacer(),
                // SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Linen Dress",
                        style: AppTextStyles.font20BlackextraLight),
                    Text("x1", style: AppTextStyles.font20BlackextraLight),
                    Text("52.00", style: AppTextStyles.font20BlackextraLight),
                  ],
                ),
                Spacer(),
                // SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Sub Total", style: TextStyle(fontSize: 20)),
                    Text("68.00", style: TextStyle(fontSize: 20)),
                  ],
                ),
                Spacer(),
                // SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Shipping", style: TextStyle(fontSize: 20)),
                    Text("52.00", style: TextStyle(fontSize: 20)),
                  ],
                ),
                Spacer(),
                // SizedBox(height: 20),
                Container(
                  width: 308.01,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 0.50,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Colors.black.withOpacity(0.20000000298023224),
                      ),
                    ),
                  ),
                ),
                Spacer(),
                // SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Total", style: TextStyle(fontSize: 20)),
                    Text("52.00", style: TextStyle(fontSize: 20)),
                  ],
                ),
              ],
            ),
          ),
        ),
        // Spacer(),
        SizedBox(
          height: 20,
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BottomNavBar(),
                    ),
                  );
                },
                child: Container(
                  width: 168,
                  height: 44,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                      side: BorderSide(
                        width: 1,
                        color: Color(0xFF777E90),
                      ),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Return Home",
                      style: TextStyle(
                        fontSize: 20,
                        color: const Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Ratescreen(),
                    ),
                  );
                },
                child: Container(
                  width: 119,
                  height: 44,
                  decoration: ShapeDecoration(
                      color: AppColors.lightGreyText20Color,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24))),
                  child: Center(
                    child: Text(
                      "Rate",
                      style: TextStyle(
                          fontSize: 20,
                          color: const Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
