import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gem_store_app/features/search/presentation/cubit/search_cubit.dart';
import 'package:gem_store_app/features/search/presentation/cubit/search_states.dart';

class RecentSearchesList extends StatelessWidget {
  const RecentSearchesList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state.recentSearches.isEmpty) {
          return const SizedBox.shrink();
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Recent Searches",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Wrap(
              spacing: 8.0,
              children: state.recentSearches.map((search) {
                return Chip(
                  label: Text(search),
                  onDeleted: () {
                    context.read<SearchCubit>().removeRecentSearch(search);
                  },
                );
              }).toList(),
            ),
          ],
        );
      },
    );
  }
}
