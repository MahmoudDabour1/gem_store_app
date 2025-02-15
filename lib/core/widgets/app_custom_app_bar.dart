import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/widgets/app_back_button.dart';

import '../utils/app_colors.dart';
import '../utils/app_text_styles.dart';

class AppCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const AppCustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.scaffoldBackGroundColor,
      elevation: 0,
      leading: AppBackButton(),
      leadingWidth: 100.w,
      title: Text(
        title,
        style: AppTextStyles.font18BlackSemiBold,
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}