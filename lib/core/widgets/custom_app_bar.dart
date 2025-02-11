import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gem_store_app/core/utils/app_assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.textStyle});

  final String title;
  final TextStyle textStyle;

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
          title,
          style: textStyle,
          //style: AppTextStyles.font20Bold,
        ),
        Spacer(),
      ],
    );
  }
}