import 'package:flutter/material.dart';
import 'package:gem_store_app/core/helpers/sizes_utils_extensions.dart';
import 'package:gem_store_app/core/utils/app_assets.dart';

import 'package:gem_store_app/core/utils/app_strings.dart';
import 'package:gem_store_app/features/checkout/widgets/order_completed_text_and_image_widget.dart';


import '../../core/widgets/app_custom_app_bar.dart';
import '../../core/widgets/app_custom_button.dart';
import 'widgets/location_and_done_shape.dart';

class CheckOutDoneScreen extends StatelessWidget {
  const CheckOutDoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppCustomAppBar(title: AppStrings.checkout),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: 24.ph,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LocationAndDoneShape(
                  changeDoneImage: AppAssets.doneBlack,
                ),
                OrderCompletedTextAndImageWidget(),
                AppCustomButton(
                  onPressed: () {},
                  text: AppStrings.continueShopping,
                ),
                32.vs,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
