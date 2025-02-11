import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/helpers/extenstions.dart';
import 'package:gem_store_app/core/routing/routes.dart';
import 'package:gem_store_app/core/themes/styles.dart';
import 'package:gem_store_app/features/onboarding/views/widgets/blured_button.dart';

class TitleAndButton extends StatelessWidget {
  const TitleAndButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Welcome to GemStore!",
          textAlign: TextAlign.center,
          style: AppStyles.font25Weight700
              .copyWith(color: Colors.white, height: 2.h),
        ),
        Text(
          " The home for a fashionista",
          textAlign: TextAlign.center,
          style: AppStyles.font16regular.copyWith(color: Colors.white),
        ),
        const SizedBox(
          height: 50,
        ),
        BluredButton(
          height: 55.h,
          width: 190.w,
          title:"Get Started",
          onPressed: () {
            context.pushNamed(Routes.onBoardingIntroScreen);
          },
        )
      ],
    );
  }
}
