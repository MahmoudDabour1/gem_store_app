import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gem_store_app/features/home/data/models/featured_products_model.dart';
import 'package:gem_store_app/features/home/data/models/recommended_product_model.dart';
part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = HomeInitial;

  const factory HomeState.featuredProductsLoading() = FeaturedProductsLoading;

  const factory HomeState.featuredProductsSuccess(
      List<FeaturedProductsModel> featuredProducts) = FeaturedProductsSuccess;

  const factory HomeState.featuredProductsFailure(String errorMessage) =
      FeaturedProductsFailure;
  const factory HomeState.selectedCategory() = SelectedCategory;
}
