import 'package:dartz/dartz.dart';
import 'package:gem_store_app/core/di/dependency_injection.dart';
import 'package:gem_store_app/features/home/data/data_source/get_products_data_source.dart';
import 'package:gem_store_app/features/home/data/models/recommended_product_model.dart';
import 'package:gem_store_app/features/home/domain/repositories/get_product_repository.dart';

class GetProductImplRepositoy extends GetProductRepository {
  @override
  Future<Either<String, List<RecommendedProductModel>>>
      getRecommendedProductsByCategory(int categryId) async {
    var returnedData = await sl<BaseGetProductsRemoteDataSource>()
        .getRecommendedProductsByCategory(categryId);
    return returnedData.fold((l) => Left(l), (r) => Right(r));
  }
}
