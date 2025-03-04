import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/features/product_details/views/widgets/custome_details_sheet.dart';
import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';

import '../../../../core/utils/app_text_styles.dart';


class FullDetails extends StatelessWidget {
  const FullDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var borderRadius = BorderRadius.only(
        topLeft: Radius.circular(20), topRight: Radius.circular(20));
    return Column(
      children: [
        CustomeDetailsSheet(),
        ColoredBox(
          color: Colors.white,
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.only(bottom: 0),
            height: 75.h,
            clipBehavior: Clip.none,
            decoration: BoxDecoration(
                color: AppColors.darkerGrayColor, borderRadius: borderRadius),
            child: TextButton.icon(
              onPressed: () {},
              label: Text(
                "Add To Cart",
                style: AppTextStyles.font18BlackSemiBold
                    .copyWith(color: Colors.white),
              ),
              icon: Image.asset(AppAssets.cartIcon),
            ),
          ),
        )
      ],
    );
  }
}
