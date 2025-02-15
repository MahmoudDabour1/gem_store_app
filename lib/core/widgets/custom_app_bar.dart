import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gem_store_app/core/helpers/extenstions.dart';
import 'package:gem_store_app/core/routing/routes.dart';
import 'package:gem_store_app/core/utils/app_assets.dart';
import 'package:gem_store_app/features/profile/view/profileDrawer_screen.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.textStyle});

  final String title;
  final TextStyle textStyle;
  void _showFilterDrawer(BuildContext context) {
    Scaffold.of(context).openDrawer();

  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () =>_showFilterDrawer(context),
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
        //Icon(Icons.notifications_on_outlined)
      ],
    );
  }
}
