import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/theming/app_styles.dart';
import 'package:gem_store_app/core/utils/spacing.dart';
import 'package:gem_store_app/core/widgets/custom_app_bar.dart';
import 'package:gem_store_app/features/checkout/widgets/checkout_inputs.dart';
import 'package:gem_store_app/features/checkout/widgets/country_drop_down_widget.dart';
import 'package:gem_store_app/features/checkout/widgets/delivery_home_container.dart';
import 'package:gem_store_app/features/checkout/widgets/location_and_done_shape.dart';

import '../../core/widgets/app_custom_button.dart';
import 'check_out_done_screen.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Checkout"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LocationAndDoneShape(),
                Text(
                  "STEP 1",
                  style: AppStyles.font11BlackLight,
                ),
                Text(
                  "Shipping",
                  style: AppStyles.font25BlackBold,
                ),
                verticalSpace(37),
                CheckoutInputs(),
                verticalSpace(61),
                Text(
                  "Shipping method",
                  style: AppStyles.font25BlackBold,
                ),
                verticalSpace(21),
                DeliveryHomeContainer(),
                verticalSpace(50),
                AppCustomButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CheckOutDoneScreen(),
                      ),
                    );
                  },
                  text: "Continue to payment",
                ),
                verticalSpace(32),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
