import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/database/local/cach_helper.dart';
import 'package:gem_store_app/core/di/dependency_injection.dart';
import 'package:gem_store_app/core/helpers/sizes_utils_extensions.dart';
import '../../../core/helpers/extenstions.dart';
import '../../../core/utils/app_strings.dart';
import '../../../core/utils/app_colors.dart';
import '../cubits/scrolling/scrolling_cubit.dart';
import '../cubits/scrolling/scrolling_state.dart';
import 'widgets/blured_button.dart';
import 'widgets/scrolling_items_and_indicator.dart';
import '../../../core/routing/routes.dart';
import '../../../core/utils/app_text_styles.dart';

class OnboardingIntroScreen extends StatelessWidget {
  OnboardingIntroScreen({super.key});

  final bool onBourding = sl<CacheHelper>().getData(key: 'onBourding') ?? false;

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
                  Expanded(child: Container(color: AppColors.deepGrayColor)),
                ],
              ),
              Positioned(
                top: 50.h,
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
                    40.vs,
                    const ScrollingItemsAndIndicator(),
                    30.vs,
                    BluredButton(
                      title: AppStrings.shoppingNowButtonString,
                      height: 53.h,
                      width: 200.w,
                      onPressed: () {
                        sl<CacheHelper>()
                            .saveData(key: 'onBoarding', value: true);
                        context.pushNamed(Routes.loginScreen);
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
