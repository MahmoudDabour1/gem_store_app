part of 'orderinfo_cubit.dart';

@immutable
sealed class OrderinfoState {}

final class OrderinfoInitial extends OrderinfoState {}

final class OrderinfoLoaded extends OrderinfoState {
  final List<Ordersmodel> orders;

  OrderinfoLoaded(this.orders);
}
