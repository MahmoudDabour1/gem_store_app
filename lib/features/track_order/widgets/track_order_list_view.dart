import 'package:flutter/material.dart';
import 'package:gem_store_app/features/track_order/widgets/track_order_list_view_item.dart';

class TrackOrderListView extends StatelessWidget {
  const TrackOrderListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: trackOrderItems.length,
      itemBuilder: (context, index) {
        return TrackOrderListViewItem(
          title: trackOrderItems[index].title,
          dateTime: trackOrderItems[index].dateTime,
          isFirst: index == 0,
          isLast: index == trackOrderItems.length - 1,
        );
      },
    );
  }
}

final List<TrackOrderListViewItem> trackOrderItems = [
  TrackOrderListViewItem(
      title: "Parcel is successfully delivered", dateTime: "15 May 10:20"),
  TrackOrderListViewItem(
      title: "Parcel is out for delivery", dateTime: "14 May 08:00"),
  TrackOrderListViewItem(
      title: "Parcel is received at delivery Branch", dateTime: "13 May 17:25"),
  TrackOrderListViewItem(
      title: "Parcel is in transit", dateTime: "13 May 07:00"),
  TrackOrderListViewItem(
    title: "Sender has shipped your parcel",
    dateTime: "12 May 14:25",
  ),
  TrackOrderListViewItem(
      title: "Sender is preparing to ship your order",
      dateTime: "12 May 10:01"),
];
