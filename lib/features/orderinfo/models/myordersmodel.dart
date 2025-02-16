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
      {required int ordernumber,
      required int trackingnumber,
      required int quantity,
      required int subtotal,
      required String deliveryaddress})
      : super(
            ordernumber: ordernumber,
            trackingnumber: trackingnumber,
            quantity: quantity,
            subtotal: subtotal,
            deliveryaddress: deliveryaddress);
}

class OrdDelivered extends Ordersmodel {
  String state = "Delivered";

  OrdDelivered(
      {required int ordernumber,
      required int trackingnumber,
      required int quantity,
      required int subtotal,
      required String deliveryaddress})
      : super(
            ordernumber: ordernumber,
            trackingnumber: trackingnumber,
            quantity: quantity,
            subtotal: subtotal,
            deliveryaddress: deliveryaddress);
}

class OrdCanceled extends Ordersmodel {
  String state = "Canceled";

  OrdCanceled(
      {required int ordernumber,
      required int trackingnumber,
      required int quantity,
      required int subtotal,
      required String deliveryaddress})
      : super(
            ordernumber: ordernumber,
            trackingnumber: trackingnumber,
            quantity: quantity,
            subtotal: subtotal,
            deliveryaddress: deliveryaddress);
}
