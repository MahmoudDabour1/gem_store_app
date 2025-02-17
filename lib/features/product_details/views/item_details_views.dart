import 'package:flutter/material.dart';
import 'widgets/full_details.dart';
import 'widgets/item_images.dart';

class ItemDetailsViews extends StatelessWidget {
  const ItemDetailsViews({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              children: [ItemImages(), FullDetails()],
            ),
          )),
    );
  }
}
