import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/routing/routes_exports.dart';
class SettingScreen extends StatelessWidget {
  // TODO: Extract the common SettingRow logic into a separate method to reduce code duplication.
  // TODO: Use constants for the titles and image paths to avoid hardcoding strings.
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 28.w),
        child: Column(
          children: [
            CustomAppBar(
                title: AppStrings.settingTitle, textStyle: AppTextStyles.font20BlackBold),
            verticalSpace(30),
          SizedBox(
            width: double.infinity,
            height: 250.h,
            child: ListOfSettingRowWidget(),)
          ],
        ),
      ),
    );
  }
}
