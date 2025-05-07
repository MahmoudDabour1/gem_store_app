import 'package:dartz/dartz.dart';
import 'package:gem_store_app/core/error/exception.dart';
import 'package:gem_store_app/core/error/failure.dart';
import 'package:gem_store_app/features/home/data/data_source/product_remote_data_source.dart';
import 'package:gem_store_app/features/home/data/models/featured_products_model.dart';
import 'package:gem_store_app/features/home/domain/repository/featured_product_repository.dart';

import '../../../../core/routing/router_observer.dart';

class ProductRepositoryImpl extends FeaturedProductRepository {
  final ProductRemoteDataSource remoteDataSource;

  ProductRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, List<FeaturedProductsModel>>>
      getFeaturedProducts() async {
    try {
      logger.d('Fetching featured products from remote data source');
      final result = await remoteDataSource.getFeaturedProducts();
      logger.d('Successfully fetched ${result.length} products');
      return Right(result);
    } on ServerException catch (e) {
      logger.e(
          'DioError in getFeaturedProducts: ${e.errorMessageModel.statusMessage}');
      return Left(ServerFailure(e.errorMessageModel.statusMessage));
    } catch (e, stackTrace) {
      logger.e('Unexpected error in getFeaturedProducts',
          error: e, stackTrace: stackTrace);
      return Left(ServerFailure('An unexpected error occurred'));
    }
  }

//   @override
//   Future<List<FeaturedProductsModel>> sortProductsByPrice(List<FeaturedProductsModel> products, bool ascending) async {
//     return mergeSort(products, ascending);
//   }
//
//   List<FeaturedProductsModel> mergeSort(List<FeaturedProductsModel> products, bool ascending) {
//     if (products.length <= 1) return products;
//
//     int mid = products.length ~/ 2;
//     List<FeaturedProductsModel> left = mergeSort(products.sublist(0, mid), ascending);
//     List<FeaturedProductsModel> right = mergeSort(products.sublist(mid), ascending);
//
//     return merge(left, right, ascending);
//   }
//
//   List<FeaturedProductsModel> merge(List<FeaturedProductsModel> left, List<FeaturedProductsModel> right, bool ascending) {
//     List<FeaturedProductsModel> result = [];
//     int leftIndex = 0;
//     int rightIndex = 0;
//
//     while (leftIndex < left.length && rightIndex < right.length) {
//       if ((ascending && left[leftIndex].price <= right[rightIndex].price) ||
//           (!ascending && left[leftIndex].price >= right[rightIndex].price)) {
//         result.add(left[leftIndex]);
//         leftIndex++;
//       } else {
//         result.add(right[rightIndex]);
//         rightIndex++;
//       }
//     }
//
//     result.addAll(left.sublist(leftIndex));
//     result.addAll(right.sublist(rightIndex));
//
//     return result;
//   }
}
