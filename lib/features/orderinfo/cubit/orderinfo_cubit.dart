import 'package:bloc/bloc.dart';
import '../models/myordersmodel.dart';
import 'package:meta/meta.dart';

part 'orderinfo_state.dart';

class OrderinfoCubit extends Cubit<OrderinfoState> {
  OrderinfoCubit() : super(OrderinfoInitial());

  void loadOrders() {
    final orders = [
      OrderPending(
          orderNumber: 1,
          trackingNumber: 1236987,
          quantity: 2,
          subTotal: 99,
          deliveryAddress: "benisuef"),
      OrderDelivered(
          orderNumber: 2,
          trackingNumber: 49547,
          quantity: 6,
          subTotal: 125,
          deliveryAddress: "benisuef"),
      OrderDelivered(
          orderNumber: 9,
          trackingNumber: 14789,
          quantity: 6,
          subTotal: 125,
          deliveryAddress: "benisuef"),
      OrderDelivered(
          orderNumber: 10,
          trackingNumber: 01458,
          quantity: 6,
          subTotal: 125,
          deliveryAddress: "benisuef"),
      OrderPending(
          orderNumber: 3,
          trackingNumber: 36985,
          quantity: 4,
          subTotal: 15,
          deliveryAddress: "benisuef"),
      OrderCanceled(
          orderNumber: 4,
          trackingNumber: 524788,
          quantity: 1,
          subTotal: 965,
          deliveryAddress: "benisuef"),
      OrderCanceled(
          orderNumber: 6,
          trackingNumber: 38967,
          quantity: 1,
          subTotal: 28,
          deliveryAddress: "benisuef"),
      OrderCanceled(
          orderNumber: 7,
          trackingNumber: 98765,
          quantity: 1,
          subTotal: 67,
          deliveryAddress: "benisuef"),
      OrderDelivered(
          orderNumber: 5,
          trackingNumber: 8288727,
          quantity: 2,
          subTotal: 325,
          deliveryAddress: "benisuef"),
    ];
    emit(OrderinfoLoaded(orders));
  }
}
