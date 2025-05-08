import 'package:dartz/dartz.dart';
import 'package:gem_store_app/core/error/failure.dart';
import 'package:gem_store_app/core/usecase/base_usecase.dart';
import 'package:gem_store_app/features/home/data/models/recommended_product_model.dart';
import 'package:gem_store_app/features/home/domain/repository/get_product_repository.dart';

class GetRecommendedProductsUseCase
    extends BaseUseCase<List<RecommendedProductModel>, int> {
  final GetProductRepository repository;

  GetRecommendedProductsUseCase(this.repository);

  @override
  Future<Either<Failure, List<RecommendedProductModel>>> call(
      int categoryId) async {
    return await repository.getRecommendedProductsByCategory(
      categoryId,
    );
  }
}
