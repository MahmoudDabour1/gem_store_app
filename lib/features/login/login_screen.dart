import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/helpers/extenstions.dart';
import 'package:gem_store_app/core/utils/app_assets.dart';
import 'package:gem_store_app/core/utils/app_text_styles.dart';
import 'package:gem_store_app/core/utils/spacing.dart';
import 'package:gem_store_app/core/widgets/app_custom_button.dart';
import 'package:gem_store_app/core/widgets/app_text_form_field.dart';
import 'package:gem_store_app/features/login/widgets/custom_circle_avatar.dart';


import '../../core/routing/routes.dart';
import '../../core/utils/app_colors.dart';

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
              verticalSpace(93),
              Text(
                "Log into ",
                style: AppTextStyles.font24BlackBold,
              ),
              Text("Your account", style: AppTextStyles.font24BlackBold),
              verticalSpace(48),
              AppTextFormField(
                labelText: "Email Address",
                validator: (value) {},
                keyboardType: TextInputType.emailAddress,
              ),
              verticalSpace(
                20,
              ),
              AppTextFormField(
                labelText: "Password",
                validator: (value) {},
                keyboardType: TextInputType.visiblePassword,
              ),
              verticalSpace(
                28,
              ),
              Row(
                children: [
                  Spacer(flex: 1),
                  Text("Forget Password?",
                      style: AppTextStyles.font12BlackRegular),
                ],
              ),
              verticalSpace(
                25,
              ),
              Center(
                child: AppCustomButton(
                  onPressed: () {
                    context.pushNamed(Routes.bottomNavBar);
                  },
                  text: "LOG IN",
                  textStyle: AppTextStyles.font16whiteBold,
                  buttonColor: AppColors.buttonLoginColor,
                height: 50,
                width: 147,
                radius:40 ,
                ),
              ),

              verticalSpace(
                18,
              ),
              Center(
                  child: Text("or log in with",
                      style: AppTextStyles.font12BlackRegular)),
              verticalSpace(
                 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomCircleAvatar(
                    image: AppAssets.appleLogo,
                  ),
                  horizontalSpace(
                     20,
                  ),
                  CustomCircleAvatar(
                    image: AppAssets.googleLogo,
                  ),
                  horizontalSpace(
                  20,
                  ),
                  CustomCircleAvatar(
                    image: AppAssets.facebookLogo,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
