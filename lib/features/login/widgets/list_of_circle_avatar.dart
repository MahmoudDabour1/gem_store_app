import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/routing/routes_exports.dart';
import 'package:gem_store_app/core/auth/google_auth.dart';

class ListOfCircleAvatar extends StatelessWidget {
  ListOfCircleAvatar({super.key});
  final List<CircleAvatarModel> circleAvatarModel = [
    CircleAvatarModel(image: AppAssets.appleLogo),
    CircleAvatarModel(image: AppAssets.googleLogo),
    CircleAvatarModel(image: AppAssets.facebookLogo),
  ];
  final AuthService authService = AuthService();
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 70.w),
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CustomCircleAvatar(
              circleAvatarModel: circleAvatarModel[index],
              onTap: () async {
                if (index == 1) {
                  User? user = await authService.signInWithGoogle();
                  if (user != null) {
                    Navigator.pushNamed(context, Routes.bottomNavBar);
                  }
                }
              });
        },
        separatorBuilder: (context, index) {
          return horizontalSpace(20);
        },
        itemCount: circleAvatarModel.length);
  }
}
