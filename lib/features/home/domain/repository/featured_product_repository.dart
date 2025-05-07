import 'package:dartz/dartz.dart';
import 'package:gem_store_app/features/home/data/models/featured_products_model.dart';

import '../../../../core/error/failure.dart';


abstract class FeaturedProductRepository {
  Future<Either<Failure, List<FeaturedProductsModel>>> getFeaturedProducts();
}
