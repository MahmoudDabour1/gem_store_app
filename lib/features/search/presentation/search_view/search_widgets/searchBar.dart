import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gem_store_app/core/utils/app_assets.dart';
import 'package:gem_store_app/features/search/presentation/cubit/search_cubit.dart';

class SearchBarWithFilter extends StatelessWidget {
  final TextEditingController controller;

  const SearchBarWithFilter({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 50.h,
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            decoration: BoxDecoration(
              color: const Color(0xffFAFAFA),
              borderRadius: BorderRadius.circular(30.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withValues(alpha:0.3),
                  spreadRadius: 1,
                  blurRadius: 10,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.search,
                  color: Color(0xff777E90),
                ),
                hintText: "Search...",
                border: InputBorder.none,
              ),
              onSubmitted: (value) {
                context.read<SearchCubit>().addRecentSearch(value);
              },
            ),
          ),
        ),
        SizedBox(width: 10.w),
        Container(
          height: 46.h,
          width: 50.w,
          decoration: BoxDecoration(
            color: const Color(0xffFAFAFA),
            borderRadius: BorderRadius.circular(13.r),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withValues(alpha:0.3),
                spreadRadius: 0,
                blurRadius: 10,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: Builder(
            builder: (context) => IconButton(
              icon: SvgPicture.asset(
                AppAssets.filterIcon,
                width: 25.w,
                height: 25.h,
              ),
              onPressed: () => Scaffold.of(context).openEndDrawer(),
            ),
          ),
        ),
      ],
    );
  }
}