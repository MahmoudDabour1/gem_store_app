import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/utils/app_assets.dart';
import 'package:gem_store_app/core/utils/app_text_styles.dart';

class CollectionSection extends StatelessWidget {
  const CollectionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SizedBox(
        height: 168.h,
        width: double.infinity,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.r),
          //   child: SvgPicture.asset(
          //     AppAssets.collection3,
          //     fit: BoxFit.cover,
          //   ),
          // ),
          child: Image.asset(
            AppAssets.collection3,
            fit: BoxFit.cover,
          ),
        ),
      ),
      Positioned(
        top: 20.h,
        right: 10.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: 'Autumn Collection 2022'.split(' ').map((word) {
            return Text(
              word,
              style: AppTextStyles.font22WhiteRegular,
            );
          }).toList(),
        ),
      ),
    ]);
  }
}
