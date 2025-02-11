import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/utils/app_strings.dart';
import 'package:gem_store_app/core/utils/app_colors.dart';
import 'package:gem_store_app/features/onboarding/cubits/scrolling/scrolling_cubit.dart';
import 'package:gem_store_app/features/onboarding/cubits/scrolling/scrolling_state.dart';
import 'package:gem_store_app/features/onboarding/views/widgets/blured_button.dart';
import 'package:gem_store_app/features/onboarding/views/widgets/scrolling_items_and_indicator.dart';

import '../../../core/utils/app_text_styles.dart';

class OnboardingIntroScreen extends StatelessWidget {
  const OnboardingIntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ScrollingCubit(),
      child: SafeArea(
        child: Scaffold(
          body: Stack(
            alignment: Alignment.center,
            children: [
              Column(
                children: [
                  Expanded(child: Container(color: Colors.white)),
                  Expanded(
                      child: Container(color: AppColors.greyContainerColor)),
                ],
              ),
              Positioned(
                top: 50,
                child: Column(
                  children: [
                    BlocBuilder<ScrollingCubit, ScrollingState>(
                      builder: (context, state) {
                        int index = (state is IncreaseDecreaseScrollingState)
                            ? state.currentPage
                            : 0;
                        return Column(
                          children: [
                            Text(
                              AppStrings.onBoardingItemsTitles[index],
                              style: AppTextStyles.font20semiBold
                                  .copyWith(height: 2.h),
                            ),
                            Text(
                              AppStrings.onBoardingItemsSubTitles[index],
                              style: AppTextStyles.font16regular,
                            ),
                          ],
                        );
                      },
                    ),
                    SizedBox(height: 40.h),
                    const ScrollingItemsAndIndicator(),
                    SizedBox(height: 30.h),
                    BluredButton(
                      title: "Shopping now",
                      height: 53.h,
                      width: 200.w,
                      onPressed: () {
                        context.read<ScrollingCubit>().destroyController();
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
