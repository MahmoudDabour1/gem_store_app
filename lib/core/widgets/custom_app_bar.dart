import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/theming/app_colors.dart';
import 'package:gem_store_app/core/theming/app_styles.dart';
import 'package:gem_store_app/core/widgets/app_back_button.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.scaffoldBackGroundColor,
      elevation: 0,
      leading: AppBackButton(),
      leadingWidth: 100.w,
      title: Text(
        title,
        style: AppStyles.font18BlackSemiBold,
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}