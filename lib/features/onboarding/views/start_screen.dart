import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/untils/app_assets.dart';
import 'package:gem_store_app/features/onboarding/views/widgets/title_and_button.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      
      body: Stack(
        alignment: Alignment.center,

        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            foregroundDecoration: BoxDecoration(
              color: Colors.black.withValues(alpha: .5)
            ),
            decoration: BoxDecoration(
              image: DecorationImage(fit: BoxFit.cover,image:AssetImage(AppAssets.imagesOboardeingStart,)
              )
            ),
          ),

          Positioned(
            bottom: 100.h,
            child: TitleAndButton()
            )
        ],

      ),
    )
    );
  }
}