import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gem_store_app/core/utils/app_assets.dart';
import 'package:gem_store_app/core/utils/app_colors.dart';
import 'package:gem_store_app/core/utils/app_text_styles.dart';
import 'package:gem_store_app/features/discover/presentation/manager/cubit/show_searched_items_cubit.dart';
import 'package:gem_store_app/features/discover/presentation/views/widgets/custom_list_of_discovery_category.dart';
import 'package:gem_store_app/features/discover/presentation/views/widgets/custom_list_of_searched_items.dart';

class HeaderOfDiscover extends StatelessWidget {
  const HeaderOfDiscover({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 246.w,
              height: 46.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                color: AppColors.morewhiteColor,
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.15),
                    offset: const Offset(0, 1),
                    blurRadius: 3,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 12.h),
                  border: InputBorder.none,
                  hintText: 'Search',
                  hintStyle: AppTextStyles.font14Medium,
                  prefixIcon: GestureDetector(
                    onTap: () {
                      context
                          .read<ShowSearchedItemsCubit>()
                          .showSearchedItems();
                    },
                    child: Icon(
                      Icons.search_rounded,
                      color: AppColors.lightGreyText20Colorw300,
                    ),
                  ),
                ),
                style: AppTextStyles.font14Medium,
              ),
            ),
            Spacer(),
            Container(
              width: 51.w,
              height: 49.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                color: AppColors.morewhiteColor,
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.15),
                    offset: const Offset(0, 1),
                    blurRadius: 3,
                    spreadRadius: 0.r,
                  ),
                ],
              ),
              child: Center(
                child: SvgPicture.asset(
                  height: 27.h,
                  width: 27.w,
                  AppAssets.filter,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        BlocBuilder<ShowSearchedItemsCubit, ShowSearchedItemsState>(
          builder: (context, state) {
            if (state is ShowSearchedItems) {
              return CustomListOfSearchedItems();
            }
            return ListOfDiscoveryCategory();
          },
        ),
      ],
    );
  }
}
