import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:gem_store_app/core/di/dependency_injection.dart';
import 'package:gem_store_app/core/use_case/base_use_case.dart';
import 'package:gem_store_app/features/home/domain/entities/recommended_product_entity.dart';
import 'package:gem_store_app/features/home/domain/repositories/get_product_repository.dart';

class GetRecommendedProductsUseCase
    implements
        BaseUseCase<List<RecommendedProductEntity>, RecommendationParameters> {
  @override
  Future<Either<String, List<RecommendedProductEntity>>> call(
      {RecommendationParameters? params}) async {
    return await sl<GetProductRepository>()
        .getRecommendedProductsByCategory(params!.categortId);
  }
}

class RecommendationParameters extends Equatable {
  final int categortId;

  const RecommendationParameters(this.categortId);

  @override
  List<Object?> get props => [categortId];
}
