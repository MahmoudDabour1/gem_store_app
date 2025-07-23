import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/routing/routes_exports.dart';
import 'package:gem_store_app/features/search/presentation/search_view/setting/widgets/list_of_setting_row.dart';


class SettingScreen extends StatelessWidget {
 
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor(context),
      
      drawer:ProfileDrawer(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 28.w),
        child: Column(
          children: [
            CustomAppBar(
                title: AppStrings.settingTitle, textStyle: AppTextStyles.font20BlackBold),
            verticalSpace(50),
          SizedBox(
            width: double.infinity,
            height: 450.h,
            child: ListOfSettingRowWidget(),)
          ],
        ),
      ),
    );
  }
}
