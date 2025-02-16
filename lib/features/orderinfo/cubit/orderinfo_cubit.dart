import 'package:bloc/bloc.dart';
import 'package:gem_store_app/features/orderinfo/models/myordersmodel.dart';
import 'package:meta/meta.dart';

part 'orderinfo_state.dart';

class OrderinfoCubit extends Cubit<OrderinfoState> {
  OrderinfoCubit() : super(OrderinfoInitial());

  void loadOrders() {
    final orders = [
      OrdPending(
          ordernumber: 1,
          trackingnumber: 1236987,
          quantity: 2,
          subtotal: 99,
          deliveryaddress: "benisuef"),
      OrdDelivered(
          ordernumber: 2,
          trackingnumber: 49547,
          quantity: 6,
          subtotal: 125,
          deliveryaddress: "benisuef"),
      OrdDelivered(
          ordernumber: 9,
          trackingnumber: 14789,
          quantity: 6,
          subtotal: 125,
          deliveryaddress: "benisuef"),
      OrdDelivered(
          ordernumber: 10,
          trackingnumber: 01458,
          quantity: 6,
          subtotal: 125,
          deliveryaddress: "benisuef"),
      OrdPending(
          ordernumber: 3,
          trackingnumber: 36985,
          quantity: 4,
          subtotal: 15,
          deliveryaddress: "benisuef"),
      OrdCanceled(
          ordernumber: 4,
          trackingnumber: 524788,
          quantity: 1,
          subtotal: 965,
          deliveryaddress: "benisuef"),
      OrdCanceled(
          ordernumber: 6,
          trackingnumber: 38967,
          quantity: 1,
          subtotal: 28,
          deliveryaddress: "benisuef"),
      OrdCanceled(
          ordernumber: 7,
          trackingnumber: 98765,
          quantity: 1,
          subtotal: 67,
          deliveryaddress: "benisuef"),
      OrdDelivered(
          ordernumber: 5,
          trackingnumber: 8288727,
          quantity: 2,
          subtotal: 325,
          deliveryaddress: "benisuef"),
    ];
    emit(OrderinfoLoaded(orders));
  }
}
