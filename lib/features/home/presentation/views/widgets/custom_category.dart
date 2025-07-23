import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/helpers/sizes_utils_extensions.dart';
import 'package:gem_store_app/features/home/data/models/recommended_product_model.dart';
import 'package:gem_store_app/features/home/presentation/controller/home_cubit.dart';
import 'package:gem_store_app/features/home/presentation/controller/home_state.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';

class CustomCategory extends StatelessWidget {
  const CustomCategory({
    super.key,
    required this.categoryModel,
    required this.index,
  });

  final CategoryModel categoryModel;
  final int index;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        int selectedIndex = 0;
        if (state is SelectedCategory) {
          selectedIndex = state.selectedIndex;
        }
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
                    color: context.watch<HomeCubit>().currentIndex == index
                        ? AppColors.brownColor
                        : AppColors.whiteColor(context),
                  ),
                ),
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: context.watch<HomeCubit>().currentIndex == index
                            ? AppColors.brownColor
                            : AppColors.greyContainerColor),
                    height: 36.h,
                    width: 36.w,
                    child: Center(

                     

                      child: ClipOval(
                        child: CachedNetworkImage(
                          placeholder: (context, url) => ClipRRect(
                            borderRadius: BorderRadius.circular(10.r),
                            child: Shimmer.fromColors(
                              baseColor: AppColors.lightGrayColor,
                              highlightColor:
                                  AppColors.lightGreyText12w300Color,
                              child: Container(
                                height: 36.h,
                                width: 36.h,
                                color: AppColors.greyTextColor,
                              ),
                            ),
                          ),
                          imageUrl: categoryModel.image,
                          width: 32.w,
                          height: 32.h,
                          fit: BoxFit.cover,
                          errorWidget: (context, url, error) {
                            return Icon(
                              Icons.error,
                              size: 20.w,
                              color: context.watch<HomeCubit>().currentIndex ==
                                      index
                                  ? Colors.white
                                  : Colors.grey,
                            );
                          },
                        ),

                      ),
                    ),
                  ),
                ),
              ),
            ),
            10.vs,
            Text(
              categoryModel.name,
              style: context.watch<HomeCubit>().currentIndex == index
                  ? AppTextStyles.font10BrownRegular
                  : AppTextStyles.font10GreyRegular,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        );
      },
    );
  }
}
