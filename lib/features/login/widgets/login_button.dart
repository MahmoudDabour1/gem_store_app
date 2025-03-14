import 'package:flutter/material.dart';
import 'package:gem_store_app/core/routing/routes_exports.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AppCustomButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => BottomNavBar()));
          context.pushNamed(Routes.bottomNavBar);
        },
        text: AppStrings.loginButtonString,
        textStyle: AppTextStyles.font16whiteBold,
        buttonColor: AppColors.buttonLoginColor,
        height: 50,
        width: 147,
        radius: 40,
      ),
    );
  }
}
