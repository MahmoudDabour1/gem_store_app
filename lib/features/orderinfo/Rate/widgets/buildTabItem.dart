import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/features/orderinfo/Rate/widgets/order_list_view.dart';
import 'package:gem_store_app/features/orderinfo/models/myordersmodel.dart';

import '../../../../core/utils/app_fonts.dart';
import '../../../../core/utils/font_weight_helper.dart';
import '../../cubit/orderinfo_cubit.dart';

Widget buildTabContent<T extends OrdersModel>(BuildContext context) {
  return BlocBuilder<OrderinfoCubit, OrderinfoState>(
    builder: (context, state) {
      if (state is OrderinfoLoaded) {
        final filteredOrders = state.orders.whereType<T>().toList();
        return OrderListView(orders: filteredOrders);
      }
      return const Center(child: CircularProgressIndicator());
    },
  );
}

Widget buildTabItem(String title) {
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
