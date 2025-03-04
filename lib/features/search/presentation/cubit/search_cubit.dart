import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gem_store_app/features/search/presentation/cubit/search_states.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(SearchState());

  void addRecentSearch(String search) {
    if (search.isNotEmpty && !state.recentSearches.contains(search)) {
      emit(state.copyWith(recentSearches: [search, ...state.recentSearches]));
    }
  }

  void removeRecentSearch(String search) {
    final updatedSearches = List<String>.from(state.recentSearches)
      ..remove(search);
    emit(state.copyWith(recentSearches: updatedSearches));
  }

  void applyFilters(Map<String, dynamic> filters) {
    emit(state.copyWith(appliedFilters: filters));
  }
}