import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/helpers/sizes_utils_extensions.dart';
import 'package:gem_store_app/features/onboarding/views/widgets/srolling_item.dart';

import '../../../../core/utils/app_assets.dart';
import '../../cubits/scrolling/scrolling_cubit.dart';
import '../../cubits/scrolling/scrolling_state.dart';

class ScrollingPart extends StatelessWidget {
  const ScrollingPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: 20.ph,
      child: SizedBox(
        height: 360.h,
        width: 470.w,
        child: PageView.builder(
          controller: context.read<ScrollingCubit>().pageController,
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
    );
  }
}
