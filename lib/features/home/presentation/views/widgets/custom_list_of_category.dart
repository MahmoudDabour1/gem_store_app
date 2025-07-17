import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gem_store_app/features/home/presentation/controller/home_cubit.dart';
import 'package:gem_store_app/features/home/presentation/controller/home_state.dart';
import 'custom_category.dart';

class CustomListOfCategory extends StatelessWidget {
  const CustomListOfCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        final cubit = context.read<HomeCubit>();
        final categories = cubit.catergoryModel;

        return state.maybeWhen(
          initial: () => categories.isEmpty
              ? _buildLoadingWidget()
              : _buildCategoriesList(context),
          getCategoriesLoading: () => _buildLoadingWidget(),
          getCategoriesSuccess: (categories) => _buildCategoriesList(context),
          getCategoriesFailure: (_) => _buildErrorWidget(),
          orElse: () => categories.isEmpty
              ? _buildLoadingWidget()
              : _buildCategoriesList(context),
        );
      },
    );
  }

  Widget _buildLoadingWidget() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CircularProgressIndicator(),
      ],
    );
  }

  Widget _buildErrorWidget() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text('Failed to load categories'),
      ],
    );
  }

  Widget _buildCategoriesList(BuildContext context) {
    final cubit = context.read<HomeCubit>();
    final categories = cubit.catergoryModel;

    if (categories.isEmpty) {
      return _buildLoadingWidget();
    }

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: categories.asMap().entries.map((entry) {
          final index = entry.key;
          final category = entry.value;
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomCategory(
              index: index,
              categoryModel: category,
            ),
          );
        }).toList(),
      ),
    );
  }
}
