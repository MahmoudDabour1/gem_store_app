import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gem_store_app/core/usecase/base_usecase.dart';
import 'package:gem_store_app/features/home/domain/use_cases/featured_products_use_case.dart';
import 'package:gem_store_app/features/home/domain/use_cases/get_recommended_products_use_case.dart';

import '../../data/models/featured_products_model.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.featuredProductsUseCase, this.getRecommendedProductsUseCase)
      : super(HomeState.initial());

  final GetFeaturedProductsUseCase featuredProductsUseCase;
  final GetRecommendedProductsUseCase getRecommendedProductsUseCase;

  int currentIndex = 0;

  void changeIndex(int index) {
    currentIndex = index;

    emit(HomeState.selectedCategory());
  }

  List<FeaturedProductsModel> _allProducts = [];
  bool isAscending = true;

  Future<void> getFeaturedProducts() async {
    emit(HomeState.featuredProductsLoading());
    final result = await featuredProductsUseCase.call(NoParameters());
    result.fold(
      (failure) {
        emit(HomeState.featuredProductsFailure(failure.message));
      },
      (featuredProducts) {
        _allProducts = featuredProducts;
        emit(HomeState.featuredProductsSuccess(featuredProducts));
      },
    );
  }

  Future<void> sortProductsByPrice({required bool ascending}) async {
    final currentState = state;
    if (currentState is! FeaturedProductsSuccess) return;

    emit(HomeState.featuredProductsLoading());

    try {
      isAscending = ascending;

      final productsToSort = List<FeaturedProductsModel>.from(_allProducts)
        ..sort((a, b) {
          final aPrice = a.price ?? 0;
          final bPrice = b.price ?? 0;
          return ascending
              ? aPrice.compareTo(bPrice)
              : bPrice.compareTo(aPrice);
        });
      await Future.delayed(Duration(milliseconds: 50));
      final sortedProducts = await _mergeSort(productsToSort, isAscending);

      emit(HomeState.featuredProductsSuccess(sortedProducts));
    } catch (e) {
      emit(HomeState.featuredProductsFailure('Failed to sort products'));
    }
  }

  Future<List<FeaturedProductsModel>> _mergeSort(
    List<FeaturedProductsModel> products,
    bool ascending,
  ) async {
    if (products.length <= 1) return products;

    final mid = products.length ~/ 2;
    final left = await _mergeSort(products.sublist(0, mid), ascending);
    final right = await _mergeSort(products.sublist(mid), ascending);

    int currentIndex = 0;

    return _merge(left, right, ascending);
  }

  List<FeaturedProductsModel> _merge(
    List<FeaturedProductsModel> left,
    List<FeaturedProductsModel> right,
    bool ascending,
  ) {
    final result = <FeaturedProductsModel>[];
    int leftIndex = 0;
    int rightIndex = 0;

    while (leftIndex < left.length && rightIndex < right.length) {
      final leftPrice = left[leftIndex].price ?? 0;
      final rightPrice = right[rightIndex].price ?? 0;

      if ((ascending && leftPrice <= rightPrice) ||
          (!ascending && leftPrice >= rightPrice)) {
        result.add(left[leftIndex]);
        leftIndex++;
      } else {
        result.add(right[rightIndex]);
        rightIndex++;
      }
    }

    result.addAll(left.sublist(leftIndex));
    result.addAll(right.sublist(rightIndex));

    return result;
  }
}
