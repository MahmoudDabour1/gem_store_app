import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/routing/routes_exports.dart';
import 'package:gem_store_app/core/auth/google_auth.dart';

class ListOfCircleAvatar extends StatefulWidget {
  const ListOfCircleAvatar({super.key});

  @override
  _ListOfCircleAvatarState createState() => _ListOfCircleAvatarState();
}

class _ListOfCircleAvatarState extends State<ListOfCircleAvatar> {
  final List<CircleAvatarModel> circleAvatarModel = [
    CircleAvatarModel(image: AppAssets.appleLogo),
    CircleAvatarModel(image: AppAssets.googleLogo),
    CircleAvatarModel(image: AppAssets.facebookLogo),
  ];

  final AuthService authService = AuthService();
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 70.w),
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return CustomCircleAvatar(
              circleAvatarModel: circleAvatarModel[index],
              onTap: () async {
                if (index == 1) {
                  setState(() {
                    _isLoading = true;
                  });

                  try {
                    User? user = await authService.signInWithGoogle();
                    if (user != null) {
                      Navigator.pushReplacementNamed(
                          context, Routes.bottomNavBar);
                    } else {
                      _showErrorMessage("Failed to sign in with Google.");
                    }
                  } catch (e) {
                    _showErrorMessage("An error occurred: $e");
                  }

                  setState(() {
                    _isLoading = false;
                  });
                }
              },
            );
          },
          separatorBuilder: (context, index) {
            return horizontalSpace(20);
          },
          itemCount: circleAvatarModel.length,
        ),
        if (_isLoading)
          Positioned.fill(
            child: Container(
              color: AppColors.blackColor.withOpacity(0.3),
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            ),
          ),
      ],
    );
  }

  void _showErrorMessage(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.red,
      ),
    );
  }
}
