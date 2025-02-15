import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gem_store_app/core/utils/app_colors.dart';
import 'package:gem_store_app/core/utils/app_text_styles.dart';
import 'package:gem_store_app/features/home/presentation/manager/cubit/category_cubit.dart';

class CustomCategory extends StatelessWidget {
  const CustomCategory(
      {super.key,
      required this.image,
      required this.title,
      required this.index});
  final String image;
  final String title;
  final int index;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryCubit, CategoryState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                context.read<CategoryCubit>().changeIndex(index);
              },
              child: Container(
                height: 42.h,
                width: 42.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 2.w,
                    color: context.read<CategoryCubit>().currentIndex == index
                        ? AppColors.brownColor
                        : AppColors.whiteColor,
                  ),
                ),
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:
                            context.read<CategoryCubit>().currentIndex == index
                                ? AppColors.brownColor
                                : AppColors.greyContainerColor),
                    height: 36.h,
                    width: 36.w,
                    child: Center(
                      child: SvgPicture.asset(
                        image,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.h),
            Text(
              title,
              style: context.read<CategoryCubit>().currentIndex == index
                  ? AppTextStyles.font10BrownRegular
                  : AppTextStyles.font10GreyRegular,
            ),
          ],
        );
      },
    );
  }
}
