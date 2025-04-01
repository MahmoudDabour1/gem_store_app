import 'package:gem_store_app/core/helpers/public_imports.dart';
import 'package:gem_store_app/features/orderinfo/Rate/widgets/ordercards/order.dart';
import '../../models/myordersmodel.dart';
import 'ordercards/summary.dart';

class OrderCard extends StatelessWidget {
  final OrdersModel order;
  const OrderCard({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: 20.allEdgeInsets,
      color: Colors.white,
      child: Padding(
        padding: 15.allEdgeInsets,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            OrderHeader(order: order),
            10.vs,
            TrackingInfo(order: order),
            10.vs,
            OrderSummary(order: order),
            10.vs,
            OrderStatusAndDetailsButton(order: order),
          ],
        ),
      ),
    );
  }
}
