import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gem_store_app/core/utils/app_assets.dart';
import 'package:gem_store_app/core/utils/app_text_styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {},
          child: SvgPicture.asset(
            AppAssets.appBar,
          ),
        ),
        Spacer(),
        Text(
          'Gemstore',
          style: AppTextStyles.font20Bold,
        ),
        Spacer(),
      ],
    );
  }
}