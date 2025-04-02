import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/helpers/public_imports.dart';
import 'package:gem_store_app/core/routing/routes_exports.dart';

class LoginScreen extends StatelessWidget {
  // TODO: Refactor this file to follow best practices and keep it within 50 lines if possible.

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:AppColors.whiteColor(context),
      body: Padding(
        padding: 33.ph,
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              93.vs,
              Text(
                AppStrings.logInto,
                style: AppTextStyles.font24BlackBold,
              ),
              Text(AppStrings.yourAccount,
                  style: AppTextStyles.font24BlackBold),
              93.vs,
              AppTextFormField(
                labelText: AppStrings.emailAddress,
                validator: (value) {},
                keyboardType: TextInputType.emailAddress,
              ),
              20.vs,
              AppTextFormField(
                labelText: AppStrings.password,
                validator: (value) {},
                keyboardType: TextInputType.visiblePassword,
              ),
              28.vs,
              Row(
                children: [
                  Spacer(flex: 1),
                  Text(AppStrings.forgetPassword,
                      style: AppTextStyles.font12BlackRegular),
                ],
              ),
              25.vs,
              LoginButton(),
              18.vs,
              Center(
                  child: Text(AppStrings.orLogInWith,
                      style: AppTextStyles.font12BlackRegular)),
              40.vs,
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
