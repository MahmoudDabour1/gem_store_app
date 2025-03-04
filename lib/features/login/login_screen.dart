import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/routing/routes_exports.dart';

class LoginScreen extends StatelessWidget {
  // TODO: Refactor this file to follow best practices and keep it within 50 lines if possible.

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
                AppStrings.logInto,
                style: AppTextStyles.font24BlackBold,
              ),
              Text(AppStrings.yourAccount,
                  style: AppTextStyles.font24BlackBold),
              verticalSpace(48),
              AppTextFormField(
                labelText: AppStrings.emailAddress,
                validator: (value) {},
                keyboardType: TextInputType.emailAddress,
              ),
              verticalSpace(
                20,
              ),
              AppTextFormField(
                labelText: AppStrings.password,
                validator: (value) {},
                keyboardType: TextInputType.visiblePassword,
              ),
              verticalSpace(
                28,
              ),
              Row(
                children: [
                  Spacer(flex: 1),
                  Text(AppStrings.forgetPassword,
                      style: AppTextStyles.font12BlackRegular),
                ],
              ),
              verticalSpace(
                25,
              ),
              LoginButton(),
              verticalSpace(
                18,
              ),
              Center(
                  child: Text(AppStrings.orLogInWith,
                      style: AppTextStyles.font12BlackRegular)),
              verticalSpace(
                40,
              ),
              SizedBox(
                  height: 42.sp,
                  width: double.infinity,
                  child: ListOfCircleAvatar())
            ],
          ),
        ),
      ),
    );
  }
}
