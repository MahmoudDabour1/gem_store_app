import 'package:dartz/dartz.dart';
import 'package:gem_store_app/core/error/failure.dart';
import 'package:gem_store_app/features/home/domain/repository/get_product_repository.dart';

import '../../../../core/usecase/base_usecase.dart';
import '../../data/models/featured_products_model.dart';

class GetFeaturedProductsUseCase
    extends BaseUseCase<List<FeaturedProductsModel>, NoParameters> {
  final GetProductRepository repository;

  GetFeaturedProductsUseCase(this.repository);

  @override
  Future<Either<Failure, List<FeaturedProductsModel>>> call(
      NoParameters parameters) async {
    return await repository.getFeaturedProducts();
  }
}
