import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'show_searched_items_state.dart';

class ShowSearchedItemsCubit extends Cubit<ShowSearchedItemsState> {
  ShowSearchedItemsCubit() : super(ShowSearchedItemsInitial());

  void showSearchedItems() {
    emit(ShowSearchedItems());
  }
}
