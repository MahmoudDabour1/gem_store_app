// TODO: Use Dart's naming conventions for classes and methods.
// TODO: Use a factory constructor or a method to create instances of the subclasses to reduce redundancy.
// TODO: Consider using an enum for the order state to improve type safety and readability.

class Ordersmodel {
  int ordernumber;
  int trackingnumber;
  int quantity;
  int subtotal;
  String deliveryaddress;

  Ordersmodel(
      {required this.ordernumber,
      required this.trackingnumber,
      required this.quantity,
      required this.subtotal,
      required this.deliveryaddress});

  int getordernumber() {
    return ordernumber;
  }

  int gettrackingnumber() {
    return trackingnumber;
  }

  int getquantity() {
    return quantity;
  }

  int getsubtotal() {
    return subtotal;
  }

  String getdeliveryaddress() {
    return deliveryaddress;
  }
}

class OrdPending extends Ordersmodel {
  String state = "Pending";

  OrdPending(
      {required super.ordernumber,
      required super.trackingnumber,
      required super.quantity,
      required super.subtotal,
      required super.deliveryaddress});
}

class OrdDelivered extends Ordersmodel {
  String state = "Delivered";

  OrdDelivered(
      {required super.ordernumber,
      required super.trackingnumber,
      required super.quantity,
      required super.subtotal,
      required super.deliveryaddress});
}

class OrdCanceled extends Ordersmodel {
  String state = "Canceled";

  OrdCanceled(
      {required super.ordernumber,
      required super.trackingnumber,
      required super.quantity,
      required super.subtotal,
      required super.deliveryaddress});
}
