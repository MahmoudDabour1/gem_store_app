import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/features/profile/view/widgets/themeprovider.dart';
import 'package:provider/provider.dart';
import '../../../core/helpers/extenstions.dart';
import '../../../core/routing/routes.dart';
import '../../../core/utils/app_assets.dart';
import '../../../core/utils/app_strings.dart';
import '../../../core/utils/app_text_styles.dart';
import 'widgets/modebutton.dart';

class ProfileDrawer extends StatefulWidget {
  const ProfileDrawer({super.key});

  @override
  State<ProfileDrawer> createState() => _ProfileDrawerState();
}

class _ProfileDrawerState extends State<ProfileDrawer> {

  @override
  Widget build(BuildContext context) {
  // final themeProvider = Provider.of<ThemeProvider>(context);
    return Drawer(
      backgroundColor: Colors.white,
      child: Padding(
        padding:  EdgeInsets.only(top:70.h,left:10.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.only(left:38.0.w,bottom: 100.h),
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
            // DrawerHeader(
            //   decoration: BoxDecoration(
            //     border: Border.all(
            //       color: Colors.white.withAlpha(0)
            //     )
            //   ),
               
            //   child: Row(
            //     children: [
            //       CircleAvatar(
            //           radius: 30.r,
            //           backgroundImage: AssetImage(AppAssets.profilePhoto)),
            //       SizedBox(width: 10.w),
            //       Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         mainAxisAlignment: MainAxisAlignment.center,
            //         children: [
            //           Text("Sunie Pham",
            //               style: AppTextStyles.font18BlackSemiBold),
            //           Text("sunieux@gmail.com",
            //               style: AppTextStyles.font14DArkGraySemiBold),
            //         ],
            //       )
            //     ],
            //   ),
            // ),
            ListTile(
              leading: Icon(Icons.settings,color:Color(0xffB1B5C3)),
              title: Text(AppStrings.setting,style: AppTextStyles.font16DarkBold.copyWith(color:Color(0xffB1B5C3)),
               ), onTap: () {
                context.pushNamed(Routes.settingScreen);
              },
            ),
            ListTile(
              leading: Icon(Icons.email_outlined,color:Color(0xffB1B5C3)),
              
              title: Text(AppStrings.support,style: AppTextStyles.font16DarkBold.copyWith(color:Color(0xffB1B5C7),),
               ), onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.info_outline_rounded,color:Color(0xffB1B5C3)),
              title: Text(AppStrings.aboutUs,style: AppTextStyles.font16DarkBold.copyWith(color:Color(0xffB1B5C3)),
               ) , onTap: () {},
            ),
            SizedBox(
              height: 70.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Center(child: ModeButton()),
            ),
          ],
        ),
      ),
    );
  }
}
