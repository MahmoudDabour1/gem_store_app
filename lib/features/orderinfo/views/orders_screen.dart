import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/utils/app_fonts.dart';
import '../../../core/utils/app_text_styles.dart';
import '../../../core/utils/font_weight_helper.dart';
import '../cubit/orderinfo_cubit.dart';
import '../models/myordersmodel.dart';
import '../Rate/widgets/order_list_view.dart';

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
                padding: EdgeInsets.only(top: 26, right: 35),
                child: Text(
                  'My Orders',
                  style: AppTextStyles.font25BlackRegular,
                ),
              ),
            ),
            backgroundColor: Colors.white,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(70),
              child: SizedBox(
                height: 40,
                child: TabBar(
                  dividerHeight: 0,
                  labelPadding: EdgeInsets.symmetric(horizontal: 16),
                  indicator: BoxDecoration(
                    color: Color(0xFF43484B),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorColor: Colors.transparent,
                  tabs: [
                    // TODO: Use constants or an enum for the tab titles to avoid hardcoding strings.
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
              // TODO: Extract the common BlocBuilder logic into a separate method to reduce code duplication.
              BlocBuilder<OrderinfoCubit, OrderinfoState>(
                builder: (context, state) {
                  if (state is OrderinfoLoaded) {
                    return OrderListView(
                      orders: state.orders.whereType<OrdPending>().toList(),
                    );
                  }
                  return Center(child: CircularProgressIndicator());
                },
              ),
              BlocBuilder<OrderinfoCubit, OrderinfoState>(
                builder: (context, state) {
                  if (state is OrderinfoLoaded) {
                    return OrderListView(
                      orders: state.orders.whereType<OrdDelivered>().toList(),
                    );
                  }
                  return Center(child: CircularProgressIndicator());
                },
              ),
              BlocBuilder<OrderinfoCubit, OrderinfoState>(
                builder: (context, state) {
                  if (state is OrderinfoLoaded) {
                    return OrderListView(
                      orders: state.orders.whereType<OrdCanceled>().toList(),
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
      width: 91,
      height: 28,
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
