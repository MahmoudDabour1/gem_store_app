import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/utils/app_colors.dart';
import '../../core/utils/app_assets.dart';
import '../../core/utils/app_text_styles.dart';
import '../../core/utils/spacing.dart';
import '../../core/widgets/custom_app_bar.dart';
import 'widgets/setting_row.dart';

class SettingScreen extends StatelessWidget {
  // TODO: Extract the common SettingRow logic into a separate method to reduce code duplication.
  // TODO: Use constants for the titles and image paths to avoid hardcoding strings.
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor(context),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 28.w),
        child: Column(
          children: [
            CustomAppBar(
                title: "Setting", textStyle: AppTextStyles.font20BlackBold),
            verticalSpace(60),
            SettingRow(
              name: 'Language',
              image: AppAssets.language,
            ),
            SettingRow(
              name: 'Terms of Use',
              image: AppAssets.termsOfUse,
            ),
            SettingRow(
              name: 'Privacy Policy',
              image: AppAssets.pricavyPolicy,
            ),
            verticalSpace(60),
            SettingRow(
              name: 'Language',
              image: "assets/images/language.png",
            ),
            SettingRow(
              name: 'Terms of Use',
              image: "assets/images/termsOfUse.png",
            ),
            SettingRow(
              name: 'Pricavy Policy',
              image: "assets/images/termsOfUse.png",
            ),
          ],
        ),
      ),
    );
  }
}
