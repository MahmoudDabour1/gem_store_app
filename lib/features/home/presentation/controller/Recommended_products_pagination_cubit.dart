import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:gem_store_app/features/home/data/models/recommended_product_model.dart';
import 'package:gem_store_app/features/home/domain/use_cases/get_recommended_products_use_case.dart';

class RecommendedProductsCubit
    extends Cubit<PagingState<int, RecommendedProductModel>> {
  final GetRecommendedProductsUseCase getRecommendedProductsUseCase;

  RecommendedProductsCubit(this.getRecommendedProductsUseCase)
      : super(PagingState());

  Future<void> fetchNextPageOfRecommendedProducts() async {
    if (state.isLoading) return;

    emit(state.copyWith(isLoading: true, error: null));

    try {
      final offset =
          state.pages?.fold<int>(0, (sum, page) => sum + page.length) ?? 0;
      final limit = 10;

      final result = await getRecommendedProductsUseCase.call(
        RecommendedParams(categoryId: 2, offset: offset, limit: limit),
      );

      result.fold(
        (failure) {
          emit(state.copyWith(error: failure.message, isLoading: false));
        },
        (products) {
          final isLastPage = products.length < limit;

          emit(state.copyWith(
            pages: [...?state.pages, products],
            keys: [...?state.keys, offset],
            hasNextPage: !isLastPage,
            isLoading: false,
          ));
        },
      );
    } catch (e) {
      emit(state.copyWith(error: e.toString(), isLoading: false));
    }
  }
}
