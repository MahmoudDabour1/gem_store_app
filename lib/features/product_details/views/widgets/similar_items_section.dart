import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/app_text_styles.dart';
import '../../../../core/utils/font_weight_helper.dart';
import 'custome_section_of_details.dart';

class SimilarItemsSection extends StatelessWidget {
  const SimilarItemsSection({super.key});
  @override
  Widget build(BuildContext context) {
    return  CustomeSectionOfDetails(title: "Similar Products", children: [
      SizedBox(
        height: 240.h,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(10.w),
              height: 230.h,
              width: 130.w,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    fit: BoxFit.fill,
                    "assets/images/Similar_item_test.png",
                    width: 130.w,
                    height: 150.h,
                  ),
                  Text(
                    "Rise Crop Hoodie",
                    style: AppTextStyles.font12BlackRegular.copyWith(height: 2.h),
                  ),
                  Text(
                    "\$ 43.00",
                    style: AppTextStyles.font14Medium.copyWith(fontWeight: FontWeightHelper.semiBold),
                  )
                ],
              ),
            );
          },
        ),
      )
    ]);
  }
}
