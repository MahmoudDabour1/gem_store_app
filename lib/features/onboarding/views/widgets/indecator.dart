import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';
import '../../cubits/scrolling/scrolling_cubit.dart';
import '../../cubits/scrolling/scrolling_state.dart';

class PageIndecator extends StatelessWidget {
  const PageIndecator({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScrollingCubit, ScrollingState>(
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
                  color: index == currentPage
                      ? AppColors.white
                      : AppColors.deepGrayColor,
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(color: AppColors.white),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
