import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gem_store_app/core/utils/font_weight_helper.dart';
import 'package:gem_store_app/core/utils/spacing.dart';
import 'package:gem_store_app/core/widgets/app_custom_button.dart';
import 'package:gem_store_app/features/checkout/widgets/location_and_done_shape.dart';

import '../../core/utils/app_text_styles.dart';
import '../../core/widgets/app_custom_app_bar.dart';

class CheckOutDoneScreen extends StatelessWidget {
  const CheckOutDoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppCustomAppBar(title: "Checkout"),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LocationAndDoneShape(
                  changeDoneImage: "assets/svgs/done_black_svg.svg",
                ),
                RSizedBox.vertical(43),
                Text(
                  "Order Completed",
                  style: AppTextStyles.font25BlackBold,
                ),
                verticalSpace(80),
                Center(child: SvgPicture.asset("assets/svgs/bag_svg.svg")),
                verticalSpace(55),
                Center(
                  child: Text(
                    "Thank you for your purchase.\nYou can view your order in ‘My Orders’\n section.",
                    style: AppTextStyles.font14DArkGraySemiBold.copyWith(
                      fontWeight: FontWeightHelper.medium,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                verticalSpace(108),
                AppCustomButton(onPressed: () {}, text: "Continue shopping"),
                verticalSpace(32),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
