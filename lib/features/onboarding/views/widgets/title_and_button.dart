import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/database/local/cach_helper.dart';
import 'package:gem_store_app/core/di/dependency_injection.dart';
import 'package:gem_store_app/core/firebase_remote_config/remote_config.dart';
import '../../../../core/helpers/extenstions.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_text_styles.dart';
import '../../../../core/utils/spacing.dart';
import 'blured_button.dart';

class TitleAndButton extends StatelessWidget {
  const TitleAndButton({super.key});

  @override
  Widget build(BuildContext context) {
    FirebaseAnalytics analytics = FirebaseAnalytics.instance;

    return Column(
      children: [
        Text(
          AppStrings.startScreenTitle,
          textAlign: TextAlign.center,
          style: AppTextStyles.font25WhiteBold.copyWith(height: 2.h),
        ),
        Text(
          AppStrings.startScreenSubTitle,
          textAlign: TextAlign.center,
          style: AppTextStyles.font16regular.copyWith(color: Colors.white),
        ),
        verticalSpace(50),
        BluredButton(
          height: 55.h,
          width: 190.w,
          title: AppStrings.getStartedButtonString,
          onPressed: () async {
            final analytics = FirebaseAnalytics.instance;
            await analytics.logEvent(name: 'get_started_button_clicked');

            final hasUserCredentials =
                await sl<CacheHelper>().readSecureData(key: 'email') != null &&
                    await sl<CacheHelper>().readSecureData(key: 'name') != null;

            final onboardingCompleted =
                sl<CacheHelper>().getDataBool(key: 'onBoarding') ?? false;

            if (hasUserCredentials) {
              context.pushNamed(Routes.bottomNavBar);
            } else {
              context.pushNamed(onboardingCompleted
                  ? Routes.loginScreen
                  : Routes.onBoardingIntroScreen);
            }
          },
        ),
      ],
    );
  }
}
