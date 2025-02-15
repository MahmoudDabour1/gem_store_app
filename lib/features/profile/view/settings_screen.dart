import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/helpers/extenstions.dart';
import 'package:gem_store_app/core/routing/routes.dart';
import 'package:gem_store_app/core/utils/app_assets.dart';
import 'package:gem_store_app/core/utils/app_colors.dart';
import 'package:gem_store_app/core/utils/app_strings.dart';
import 'package:gem_store_app/core/utils/app_text_styles.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 70.h, horizontal: 20.w),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                    radius: 35.r,
                    backgroundImage: AssetImage(AppAssets.profilePhoto)),
                SizedBox(
                  width: 10.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sunie Pham',
                      style: AppTextStyles.font18BlackSemiBold,
                    ),
                    SizedBox(height: 5.h),
                    Text(
                      'sunieux@gmail.com',
                      style: AppTextStyles.font14DArkGraySemiBold,
                    ),
                  ],
                ),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.settings,
                      size: 28, color: AppColors.blackColor),
                  onPressed: () {
                    context.pushNamed(Routes.profile);
                  },
                ),
              ],
            ),
            SizedBox(height: 50.h),
            Container(
              height: 500.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.r),
                color: AppColors.whiteColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.favorite, color: Colors.grey),
                    title: Text(AppStrings.myWishlist),
                    trailing: Icon(Icons.arrow_forward_ios, size: 16),
                    onTap: () {},
                  ),
                  Divider(
                    color: AppColors.greyContainerColor,
                  ),
                  ListTile(
                    leading: Icon(Icons.logout, color: Colors.grey),
                    title: Text(AppStrings.logOut),
                    onTap: () {},
                  ),
                  Divider(
                    color: AppColors.greyContainerColor,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
