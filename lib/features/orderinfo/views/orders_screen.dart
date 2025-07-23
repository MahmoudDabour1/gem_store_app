import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gem_store_app/core/helpers/public_imports.dart';
import 'package:gem_store_app/core/routing/routes_exports.dart';
import 'package:gem_store_app/features/profile/view/profiledrawer_screen.dart';
import '../Rate/widgets/buildTabItem.dart';
import '../cubit/orderinfo_cubit.dart';
import '../models/myordersmodel.dart';


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
          drawer: ProfileDrawer(),
          
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
              preferredSize: Size.fromHeight(70),
              child: SizedBox(
                height: 40.h,
                child: TabBar(
                  dividerHeight: 0.h,
                  labelPadding: 16.ph,
                  indicator: BoxDecoration(
                    color: Color(0xFF43484B),
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorColor: Colors.transparent,
                  tabs: [
                   
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
