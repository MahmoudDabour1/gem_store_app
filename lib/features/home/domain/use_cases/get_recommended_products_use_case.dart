import 'package:dartz/dartz.dart';
import 'package:gem_store_app/core/error/failure.dart';
import 'package:gem_store_app/core/usecase/base_usecase.dart';
import 'package:gem_store_app/features/home/data/models/recommended_product_model.dart';
import 'package:gem_store_app/features/home/domain/repository/get_product_repository.dart';

class GetRecommendedProductsUseCase
    extends BaseUseCase<List<RecommendedProductModel>, RecommendedParams> {
  final GetProductRepository repository;

  GetRecommendedProductsUseCase(this.repository);

  @override
  Future<Either<Failure, List<RecommendedProductModel>>> call(
      RecommendedParams params) async {
    return await repository.getRecommendedProductsByCategory(
        params.categoryId, params.offset, params.limit);
  }
}

class RecommendedParams {
  final int categoryId;
  final int offset;
  final int limit;

  RecommendedParams({
    required this.categoryId,
    required this.offset,
    required this.limit,
  });
}
