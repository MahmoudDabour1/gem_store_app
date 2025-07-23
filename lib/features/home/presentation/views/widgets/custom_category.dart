import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gem_store_app/core/helpers/sizes_utils_extensions.dart';
import 'package:gem_store_app/features/home/presentation/controller/home_cubit.dart';
import 'package:gem_store_app/features/home/presentation/controller/home_state.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';

class CustomCategory extends StatelessWidget {
  const CustomCategory({
    super.key,
    required this.image,
    required this.title,
    required this.index,
  });

  final String image;
  final String title;
  final int index;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                context.read<HomeCubit>().changeIndex(index);
              },
              child: Container(
                height: 42.h,
                width: 42.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 2.w,
                    color: context.read<HomeCubit>().currentIndex == index
                        ? AppColors.brownColor
                        : AppColors.whiteColor(context),
                  ),
                ),
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: context.read<HomeCubit>().currentIndex == index
                            ? AppColors.brownColor
                            : AppColors.greyContainerColor),
                    height: 36.h,
                    width: 36.w,
                    child: Center(
                      child: SvgPicture.asset(
                        image,
                         colorFilter: ColorFilter.mode(context.read<HomeCubit>().currentIndex == index? Colors.white: Color(0xff9D9D9D) , BlendMode.srcIn)
                         
                      ),
                    ),
                  ),
                ),
              ),
            ),
            10.vs,
            Text(
              title,
              style: context.read<HomeCubit>().currentIndex == index
                  ? AppTextStyles.font10BrownRegular
                  : AppTextStyles.font10GreyRegular,
            ),
          ],
        );
      },
    );
  }
}
