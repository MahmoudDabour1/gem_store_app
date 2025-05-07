import 'package:dartz/dartz.dart';
import 'package:gem_store_app/core/database/remote/api_consumer.dart';
import 'package:gem_store_app/core/database/remote/end_points.dart';
import 'package:gem_store_app/core/di/dependency_injection.dart';
import 'package:gem_store_app/core/errors/exceptions.dart';
import 'package:gem_store_app/features/home/data/models/recommended_product_model.dart';

abstract class BaseGetProductsRemoteDataSource {
  Future<Either<String, List<RecommendedProductModel>>>
      getRecommendedProductsByCategory(int categryId);
}

class GetProductsRemoteDataSource extends BaseGetProductsRemoteDataSource {
  @override
  Future<Either<String, List<RecommendedProductModel>>>
      getRecommendedProductsByCategory(int categryId) async {
    try {
      final response = await sl<ApiConsumer>().get(
        EndPoint.getRecommendedProductsByCategory(categryId),
      );
      return Right(
          response.map((e) => RecommendedProductModel.fromJson(e)).toList());
    } on ServerException catch (error) {
      return Left(error.errorModel.errorMessage);
    }
  }
}
