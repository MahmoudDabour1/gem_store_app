import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gem_store_app/core/routing/routes_exports.dart';
import 'package:gem_store_app/core/utils/app_colors.dart';
import 'package:gem_store_app/features/search/presentation/cubit/search_cubit.dart';
import 'package:gem_store_app/features/search/presentation/search_view/filter_section/filter_widget.dart';
import 'widgets/discover_screen_body.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    FirebaseAnalytics.instance.logEvent(
      name: 'discover_interaction',
      parameters: {
        'interaction_type': 'example_interaction',
      },
    );
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor(context),
        drawer: ProfileDrawer(),
        endDrawer: FilterDrawer(
        onApply: (selectedFilters) {
          context.read<SearchCubit>().applyFilters(selectedFilters);
          Navigator.pop(context);},),
        body: DiscoverScreenBody(),
      ),
    );
  }
}
