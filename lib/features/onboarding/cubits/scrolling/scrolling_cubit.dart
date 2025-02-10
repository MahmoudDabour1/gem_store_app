import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gem_store_app/features/onboarding/cubits/scrolling/scrolling_state.dart';

class ScrollingCubit extends Cubit<ScrollingState> {
  ScrollingCubit() : super(InitialScrollingState()) {
    pageController.addListener(_onPageChanged);
  }

  final PageController pageController = PageController(viewportFraction: .6);
  int index = 0;

  void _onPageChanged() {
    final currentPage = pageController.page;
    if (currentPage != null) {
      index = currentPage.round();
      emit(IncreaseDecreaseScrollingState(currentPage: index));
    }
  }

  void destroyController() {
    pageController.dispose();
    emit(DistroyScrollingState());
  }


}
