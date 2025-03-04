enum OrderState {
  pending,
  delivered,
  canceled,
}

class OrdersModel {
  int orderNumber;
  int trackingNumber;
  int quantity;
  int subTotal;
  String deliveryAddress;
  OrderState state;

  OrdersModel({
    required this.orderNumber,
    required this.trackingNumber,
    required this.quantity,
    required this.subTotal,
    required this.deliveryAddress,
    required this.state,
  });

  factory OrdersModel.create(
    OrderState state, {
    required int orderNumber,
    required int trackingNumber,
    required int quantity,
    required int subTotal,
    required String deliveryAddress,
  }) {
    switch (state) {
      case OrderState.pending:
        return OrderPending(
          orderNumber: orderNumber,
          trackingNumber: trackingNumber,
          quantity: quantity,
          subTotal: subTotal,
          deliveryAddress: deliveryAddress,
        );
      case OrderState.delivered:
        return OrderDelivered(
          orderNumber: orderNumber,
          trackingNumber: trackingNumber,
          quantity: quantity,
          subTotal: subTotal,
          deliveryAddress: deliveryAddress,
        );
      case OrderState.canceled:
        return OrderCanceled(
          orderNumber: orderNumber,
          trackingNumber: trackingNumber,
          quantity: quantity,
          subTotal: subTotal,
          deliveryAddress: deliveryAddress,
        );
    }
  }

  int getOrderNumber() {
    return orderNumber;
  }

  int getTrackingNumber() {
    return trackingNumber;
  }

  int getQuantity() {
    return quantity;
  }

  int getSubtotal() {
    return subTotal;
  }

  String getDeliveryAddress() {
    return deliveryAddress;
  }

  OrderState getState() {
    return state;
  }
}

class OrderPending extends OrdersModel {
  OrderPending({
    required super.orderNumber,
    required super.trackingNumber,
    required super.quantity,
    required super.subTotal,
    required super.deliveryAddress,
  }) : super(
          state: OrderState.pending,
        );
}

class OrderDelivered extends OrdersModel {
  OrderDelivered({
    required super.orderNumber,
    required super.trackingNumber,
    required super.quantity,
    required super.subTotal,
    required super.deliveryAddress,
  }) : super(
          state: OrderState.delivered,
        );
}

class OrderCanceled extends OrdersModel {
  OrderCanceled({
    required super.orderNumber,
    required super.trackingNumber,
    required super.quantity,
    required super.subTotal,
    required super.deliveryAddress,
  }) : super(
          state: OrderState.canceled,
        );
}
