import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gem_store_app/core/usecase/base_usecase.dart';
import 'package:gem_store_app/features/home/domain/use_cases/featured_products_use_case.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.featuredProductsUseCase) : super(HomeState.initial());

  final GetFeaturedProductsUseCase featuredProductsUseCase;

  Future<void> getFeaturedProducts() async {
    emit(HomeState.featuredProductsLoading());
    final result = await featuredProductsUseCase.call(NoParameters());
    result.fold(
      (failure) {
        emit(HomeState.featuredProductsFailure(failure.message));
      },
      (featuredProducts) {
        emit(HomeState.featuredProductsSuccess(featuredProducts));
      },
    );
  }

  int currentIndex = 0;

  void changeIndex(int index) {
    currentIndex = index;

    emit(HomeState.selectedCategory());
  }
}
