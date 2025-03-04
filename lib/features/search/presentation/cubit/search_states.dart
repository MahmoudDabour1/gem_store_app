class SearchState {
  final List<String> recentSearches;
  final Map<String, dynamic> appliedFilters;

  SearchState({
    this.recentSearches = const [],
    this.appliedFilters = const {},
  });

  SearchState copyWith({
    List<String>? recentSearches,
    Map<String, dynamic>? appliedFilters,
  }) {
    return SearchState(
      recentSearches: recentSearches ?? this.recentSearches,
      appliedFilters: appliedFilters ?? this.appliedFilters,
    );
  }
}