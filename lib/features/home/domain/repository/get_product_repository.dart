import 'package:dartz/dartz.dart';
import 'package:gem_store_app/features/home/data/models/featured_products_model.dart';
import 'package:gem_store_app/features/home/data/models/recommended_product_model.dart';

import '../../../../core/error/failure.dart';

abstract class GetProductRepository {
  Future<Either<Failure, List<FeaturedProductsModel>>> getFeaturedProducts(
      int offset, int limit);

  Future<List<FeaturedProductsModel>> sortProductsByPrice(
    List<FeaturedProductsModel> products,
    bool ascending,
  );

  Future<Either<Failure, List<RecommendedProductModel>>>
      getRecommendedProductsByCategory(int categryId, int offset, int limit);
}
