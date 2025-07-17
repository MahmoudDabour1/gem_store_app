import 'package:dartz/dartz.dart';
import 'package:gem_store_app/core/error/failure.dart';
import 'package:gem_store_app/core/usecase/base_usecase.dart';
import 'package:gem_store_app/features/home/data/models/recommended_product_model.dart';
import 'package:gem_store_app/features/home/domain/repository/get_product_repository.dart';

class GetCategoriesUseCase
    extends BaseUseCase<List<CategoryModel>, NoParameters> {
  final GetProductRepository repository;

  GetCategoriesUseCase(this.repository);

  @override
  Future<Either<Failure, List<CategoryModel>>> call(
      NoParameters parameters) async {
    return await repository.getCategories();
  }
}
