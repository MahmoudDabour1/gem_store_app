import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gem_store_app/core/utils/app_colors.dart';
import 'package:gem_store_app/core/utils/app_text_styles.dart';
import 'package:gem_store_app/features/orderinfo/models/myordersmodel.dart';
import 'package:gem_store_app/features/track_order/track_order.dart';
import 'package:gem_store_app/features/orderinfo/Rate/views/ratescreen.dart';
import 'package:gem_store_app/core/widgets/bottom_nav_bar.dart';

class Orderdatailscard extends StatelessWidget {
  final Ordersmodel order;
  const Orderdatailscard({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20.h,
        ),
        GestureDetector(
          onTap: () {
            if (order is OrdPending) {
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
            child: Container(
              width: 327.w,
              height: 92.h,
              child: Padding(
                padding: EdgeInsets.all(15.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        order is OrdPending
                            ? "Your order is on the way \nclick here to track your order"
                            : order is OrdDelivered
                                ? "Your order is delivered \nrate product to get 5 points"
                                : "Your order Canceld",
                        style: AppTextStyles.font20White,
                      ),
                    ),
                    SvgPicture.asset(
                      order is OrdPending
                          ? "assets/svgs/car.svg"
                          : order is OrdDelivered
                              ? "assets/svgs/gift.svg"
                              : "",
                      width: 50.w,
                      height: 50.h,
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
          margin: EdgeInsets.all(20.w),
          color: const Color.fromARGB(255, 255, 255, 255),
          child: Container(
            width: 327.w,
            height: 114.h,
            padding: EdgeInsets.all(16.w),
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
                      '${order.getordernumber()}',
                      style: AppTextStyles.font20BlackRegular,
                    ),
                  ],
                ),
                SizedBox(height: 5.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Tracking Number:',
                      style: AppTextStyles.font20GreyLight,
                    ),
                    Text(
                      '${order.gettrackingnumber()}',
                      style: AppTextStyles.font20BlackRegular,
                    ),
                  ],
                ),
                SizedBox(height: 5.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Delivery Address:',
                      style: AppTextStyles.font20GreyLight,
                    ),
                    Text(
                      '${order.getdeliveryaddress()}',
                      style: AppTextStyles.font20BlackRegular,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Card(
          elevation: 5,
          shadowColor: const Color.fromARGB(255, 245, 245, 245),
          margin: EdgeInsets.all(20.w),
          color: const Color.fromARGB(255, 255, 255, 255),
          child: Container(
            width: 335.w,
            height: 247.h,
            padding: EdgeInsets.all(16.w),
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
                SizedBox(height: 5.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Linen Dress",
                        style: AppTextStyles.font20BlackextraLight),
                    Text("x1", style: AppTextStyles.font20BlackextraLight),
                    Text("52.00", style: AppTextStyles.font20BlackextraLight),
                  ],
                ),
                SizedBox(height: 30.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Sub Total", style: TextStyle(fontSize: 20.sp)),
                    Text("68.00", style: TextStyle(fontSize: 20.sp)),
                  ],
                ),
                SizedBox(height: 5.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Shipping", style: TextStyle(fontSize: 20.sp)),
                    Text("52.00", style: TextStyle(fontSize: 20.sp)),
                  ],
                ),
                SizedBox(height: 20.h),
                Container(
                  width: 308.01.w,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 0.50.w,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Colors.black.withOpacity(0.20000000298023224),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Total", style: TextStyle(fontSize: 20.sp)),
                    Text("52.00", style: TextStyle(fontSize: 20.sp)),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20.h,
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
                  width: 168.w,
                  height: 44.h,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24.r),
                      side: BorderSide(
                        width: 1.w,
                        color: Color(0xFF777E90),
                      ),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Return Home",
                      style: TextStyle(
                        fontSize: 20.sp,
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
                  width: 119.w,
                  height: 44.h,
                  decoration: ShapeDecoration(
                      color: AppColors.lightGreyText20Color,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24.r))),
                  child: Center(
                    child: Text(
                      "Rate",
                      style: TextStyle(
                          fontSize: 20.sp,
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
