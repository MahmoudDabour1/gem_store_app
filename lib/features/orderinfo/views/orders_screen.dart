import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import '../../../core/utils/app_fonts.dart';
import '../../../core/utils/app_text_styles.dart';
// import '../../../core/utils/font_weight_helper.dart';
import '../Rate/widgets/buildTabItem.dart';
import '../cubit/orderinfo_cubit.dart';
import '../models/myordersmodel.dart';
// import '../Rate/widgets/order_list_view.dart';

class TabTitles {
  static const String pending = "Pending";
  static const String delivered = "Delivered";
  static const String canceled = "Canceled";
}

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
                    Tab(child: buildTabItem(TabTitles.pending)),
                    Tab(child: buildTabItem(TabTitles.delivered)),
                    Tab(child: buildTabItem(TabTitles.canceled)),
                  ],
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                ),
              ),
            ),
          ),
          body: TabBarView(
            children: [
              buildTabContent<OrderPending>(context),
              buildTabContent<OrderDelivered>(context),
              buildTabContent<OrderCanceled>(context),
            ],
          ),
        ),
      ),
    );
  }
}
