import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/themes/colors.dart';
import 'package:gem_store_app/features/onboarding/cubits/scrolling/scrolling_cubit.dart';
import 'package:gem_store_app/features/onboarding/cubits/scrolling/scrolling_state.dart';
import 'package:gem_store_app/features/onboarding/views/widgets/srolling_item.dart';

import '../../../../core/untils/app_assets.dart';

class ScrollingItemsAndIndicator extends StatelessWidget {
  const ScrollingItemsAndIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    final scrollingCubit = BlocProvider.of<ScrollingCubit>(context);

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SizedBox(
            height: 360.h,
            width: 470.w,
            child: PageView.builder(
              controller: scrollingCubit.pageController,
              itemCount: AppAssets.imagesOboardeingItems.length,
              scrollDirection: Axis.horizontal,
              physics: const AlwaysScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return BlocBuilder<ScrollingCubit, ScrollingState>(
                  builder: (context, state) {
                    int currentPage = (state is IncreaseDecreaseScrollingState) ? state.currentPage : 0;
                    return CustomeItem(index: index, page: currentPage);
                  },
                );
              },
            ),
          ),
        ),
        SizedBox(height: 50.h),
        BlocBuilder<ScrollingCubit, ScrollingState>(
          builder: (context, state) {
            int currentPage = (state is IncreaseDecreaseScrollingState) ? state.currentPage : 0;
            return SizedBox(
              width: 50.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                  3,
                  (index) => Container(
                    height: 7.h,
                    width: 7.w,
                    decoration: BoxDecoration(
                      color: index == currentPage ? Colors.white : ColorManager.mainGreyColor,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
