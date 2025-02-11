part of 'show_searched_items_cubit.dart';

@immutable
sealed class ShowSearchedItemsState {}

final class ShowSearchedItemsInitial extends ShowSearchedItemsState {}

final class ShowSearchedItems extends ShowSearchedItemsState {}

final class ShowDiscoveryCategory extends ShowSearchedItemsState {}
