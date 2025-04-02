import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/helpers/extenstions.dart';
import '../../../core/routing/routes.dart';
import '../../../core/utils/app_assets.dart';
import '../../../core/utils/app_strings.dart';
import '../../../core/utils/app_text_styles.dart';
import 'widgets/modebutton.dart';

class ProfileDrawer extends StatelessWidget {
  const ProfileDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DrawerHeader(
            child: Row(
              children: [
                CircleAvatar(
                    radius: 30.r,
                    backgroundImage: AssetImage(AppAssets.profilePhoto)),
                SizedBox(width: 10.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Sunie Pham",
                        style: AppTextStyles.font18BlackSemiBold),
                    Text("sunieux@gmail.com",
                        style: AppTextStyles.font14DArkGraySemiBold),
                  ],
                )
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text(AppStrings.setting),
            onTap: () {
              context.pushNamed(Routes.settingScreen);
            },
          ),
          ListTile(
            leading: Icon(Icons.email_outlined),
            title: Text(AppStrings.support),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.info_outline_rounded),
            title: Text(AppStrings.aboutUs),
            onTap: () {},
          ),
          SizedBox(
            height: 50.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: ModeButton(),
          ),
        ],
      ),
    );
  }
}
