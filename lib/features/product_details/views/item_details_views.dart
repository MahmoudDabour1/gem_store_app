import 'package:flutter/material.dart';
import 'package:gem_store_app/core/utils/app_colors.dart';
import 'widgets/full_details.dart';
import 'widgets/item_images.dart';

class ItemDetailsViews extends StatelessWidget {
  const ItemDetailsViews({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: AppColors.whiteColor(context),
          body: SingleChildScrollView(
            child: Column(
              children: [ItemImages(), FullDetails()],
            ),
          )),
    );
  }
}
