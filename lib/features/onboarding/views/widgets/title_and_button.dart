import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helpers/extenstions.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/utils/app_strings.dart';
import 'blured_button.dart';

import '../../../../core/utils/app_text_styles.dart';
import '../../../../core/utils/spacing.dart';

class TitleAndButton extends StatelessWidget {
  const TitleAndButton({super.key});

  @override
  Widget build(BuildContext context) {
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
          onPressed: () {
            context.pushNamed(Routes.onBoardingIntroScreen);
          },
        )
      ],
    );
  }
}
