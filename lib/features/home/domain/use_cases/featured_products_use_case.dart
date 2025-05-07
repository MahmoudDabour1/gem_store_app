import 'package:dartz/dartz.dart';
import 'package:gem_store_app/core/error/failure.dart';

import '../../../../core/usecase/base_usecase.dart';
import '../../data/models/featured_products_model.dart';
import '../repository/featured_product_repository.dart';

class GetFeaturedProductsUseCase
    extends BaseUseCase<List<FeaturedProductsModel>, NoParameters> {
  final FeaturedProductRepository repository;

  GetFeaturedProductsUseCase(this.repository);

  @override
  Future<Either<Failure, List<FeaturedProductsModel>>> call(
      NoParameters parameters) async {
    return await repository.getFeaturedProducts();
  }
}
