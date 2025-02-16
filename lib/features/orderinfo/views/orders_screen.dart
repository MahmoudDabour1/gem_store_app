import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/utils/app_colors.dart';
import 'package:gem_store_app/core/utils/app_fonts.dart';
import 'package:gem_store_app/core/utils/app_text_styles.dart';
import 'package:gem_store_app/core/utils/font_weight_helper.dart';
import 'package:gem_store_app/features/orderinfo/cubit/orderinfo_cubit.dart';
import 'package:gem_store_app/features/orderinfo/models/myordersmodel.dart';
import 'package:gem_store_app/features/orderinfo/viewmodels/order_list_view.dart';

class OrdersView extends StatelessWidget {
  const OrdersView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OrderinfoCubit()..loadOrders(),
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Center(
              child: Padding(
                padding: EdgeInsets.only(top: 26.h, right: 35.w),
                child: Text(
                  'My Orders',
                  style: AppTextStyles.font25BlackRegular,
                ),
              ),
            ),
            backgroundColor: Colors.white,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(70.h),
              child: Container(
                height: 40.h,
                child: TabBar(
                  dividerHeight: 0,
                  labelPadding: EdgeInsets.symmetric(horizontal: 16.w),
                  indicator: BoxDecoration(
                    color: Color(0xFF43484B),
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorColor: Colors.transparent,
                  tabs: [
                    Tab(child: _buildTabItem("Pending")),
                    Tab(child: _buildTabItem("Delivered")),
                    Tab(child: _buildTabItem("Canceled")),
                  ],
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                ),
              ),
            ),
          ),
          body: TabBarView(
            children: [
              BlocBuilder<OrderinfoCubit, OrderinfoState>(
                builder: (context, state) {
                  if (state is OrderinfoLoaded) {
                    return OrderListView(
                      orders: state.orders
                          .where((order) => order is OrdPending)
                          .toList(),
                    );
                  }
                  return Center(child: CircularProgressIndicator());
                },
              ),
              BlocBuilder<OrderinfoCubit, OrderinfoState>(
                builder: (context, state) {
                  if (state is OrderinfoLoaded) {
                    return OrderListView(
                      orders: state.orders
                          .where((order) => order is OrdDelivered)
                          .toList(),
                    );
                  }
                  return Center(child: CircularProgressIndicator());
                },
              ),
              BlocBuilder<OrderinfoCubit, OrderinfoState>(
                builder: (context, state) {
                  if (state is OrderinfoLoaded) {
                    return OrderListView(
                      orders: state.orders
                          .where((order) => order is OrdCanceled)
                          .toList(),
                    );
                  }
                  return Center(child: CircularProgressIndicator());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTabItem(String title) {
    return Container(
      width: 91.w,
      height: 28.h,
      alignment: Alignment.center,
      child: Text(
        title,
        style: TextStyle(
          fontSize: 20.sp,
          fontWeight: FontWeightHelper.bold,
          fontFamily: AppFonts.productSans,
        ),
      ),
    );
  }
}
