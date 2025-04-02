import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gem_store_app/core/utils/app_colors.dart';
import 'package:gem_store_app/core/widgets/app_back_button.dart';
import 'package:gem_store_app/features/search/presentation/cubit/search_cubit.dart';
import 'package:gem_store_app/features/search/presentation/cubit/search_states.dart';
import 'package:gem_store_app/features/search/presentation/search_view/filter_section/filter_widget.dart';
import 'package:gem_store_app/features/search/presentation/search_view/search_widgets/recent_searches.dart';
import 'package:gem_store_app/features/search/presentation/search_view/search_widgets/searchbar.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SearchCubit(),
      child: _SearchScreenBody(),);}}

class _SearchScreenBody extends StatelessWidget {
  final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor(context),
      endDrawer: FilterDrawer(
        onApply: (selectedFilters) {
          context.read<SearchCubit>().applyFilters(selectedFilters);
          Navigator.pop(context);},),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40.h),
            AppBackButton(),
            SizedBox(height: 10.h),
            SearchBarWithFilter(controller: searchController),
            SizedBox(height: 20.h),
            RecentSearchesList(),
            SizedBox(height: 20.h),
            BlocBuilder<SearchCubit, SearchState>(
              builder: (context, state) {
                return
                  Center(child: Text("Filtered Results:\n${state.appliedFilters}",textAlign: TextAlign.center,),);},),
          ],),),
    );
  }
}





