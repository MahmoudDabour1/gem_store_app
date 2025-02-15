import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gem_store_app/core/utils/app_assets.dart';
import 'package:gem_store_app/core/utils/app_text_styles.dart';
import 'package:gem_store_app/core/utils/spacing.dart';

class SettingRow extends StatelessWidget {
  const SettingRow({
    super.key,
    required this.name,
    required this.image,
  });
  final String name;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50.sp,
          child: Row(
            children: [
              Image.asset(image),
              horizontalSpace(20),
              Text(
                name,
                style: AppTextStyles.font14Medium,
              ),
              Spacer(
                flex: 1,
              ),
              SvgPicture.asset(AppAssets.rightArrow),
              horizontalSpace(5)
            ],
          ),
        ),
        Divider(),
      ],
    );
  }
}
