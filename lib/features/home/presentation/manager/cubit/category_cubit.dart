import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit() : super(CategoryInitial());

  int currentIndex = 0;

  void changeIndex(int index) {
    currentIndex = index;

    emit(SelectedCategory());
  }
}
