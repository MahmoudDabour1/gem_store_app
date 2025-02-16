import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/utils/app_assets.dart';
import 'package:gem_store_app/core/utils/app_text_styles.dart';
import 'package:gem_store_app/core/utils/spacing.dart';
import 'package:gem_store_app/core/widgets/custom_app_bar.dart';
import 'package:gem_store_app/features/setting/widgets/setting_row.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                 SettingRow(name: 'Language', image:"assets/images/language.png",),
                  SettingRow(name: 'Terms of Use', image:"assets/images/termsOfUse.png",),
                   SettingRow(name: 'Pricavy Policy', image:"assets/images/termsOfUse.png",),
          ],
        ),
      ),
    );
  }
}
