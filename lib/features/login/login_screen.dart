import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/theming/app_colors.dart';
import 'package:gem_store_app/core/utils/app_assets.dart';
import 'package:gem_store_app/core/utils/app_text_styles.dart';
import 'package:gem_store_app/features/login/widgets/custom_circle_avatar.dart';
import 'package:gem_store_app/features/login/widgets/custom_text_form_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 33.sp),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 93.h),
              Text(
                "Log into ",
                style:AppTextStyles.font24,
              ),
              Text(
                "Your account",
                style: AppTextStyles.font24
              ),
              SizedBox(height: 48.h),
              CustomTextFormField(
                label: 'Email Address',
              ),
               SizedBox(height: 20.h,),
              CustomTextFormField(
                label: 'Password',
              ),
                SizedBox(height: 28.h,),
              Row(
                children: [
                  Spacer(flex: 1),
                  Text(
                    "Forget Password?",
                    style: AppTextStyles.font12BlackLight
                  ),
                ],
              ),
               SizedBox(height: 25.h,),
              Center(
                child: Container(
                  height: 51.sp,
                  width: 147.sp,
                  decoration: BoxDecoration(
                      color: Color(
                        0xff2D201C,
                      ),
                      borderRadius: BorderRadius.circular(40.sp)),
                  child: Center(
                      child: Text(
                    "LOG IN",
                    style: AppTextStyles.font16white
                  )),
                ),
              ),
              SizedBox(height: 18.h,),
              Center(
                  child: Text(
                "or log in with",
                style: AppTextStyles.font12BlackLight
              )),
               SizedBox(height: 40.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomCircleAvatar(image: AppAssets.appleLogo,),
                  SizedBox(width: 20.w,),
                  CustomCircleAvatar(image: AppAssets.googleLogo,),
                   SizedBox(width: 20.w,),
                  CustomCircleAvatar(image: AppAssets.facebookLogo,)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

