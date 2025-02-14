import 'package:flutter/material.dart';
import 'package:gem_store_app/features/product_details/views/widgets/full_details.dart';
import 'package:gem_store_app/features/product_details/views/widgets/item_images.dart';




class ItemDetailsViews extends StatelessWidget {
  const ItemDetailsViews({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              children: [
                ItemImages(),
                
                FullDetails()
                
              ],
            ),
          )),
    );
  }
}
