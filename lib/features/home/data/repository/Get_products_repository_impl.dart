import 'package:dartz/dartz.dart';
import 'package:gem_store_app/core/error/exception.dart';
import 'package:gem_store_app/core/error/failure.dart';
import 'package:gem_store_app/features/home/data/data_source/product_remote_data_source.dart';
import 'package:gem_store_app/features/home/data/models/featured_products_model.dart';
import 'package:gem_store_app/features/home/data/models/recommended_product_model.dart';
import 'package:gem_store_app/features/home/domain/repository/get_product_repository.dart';

import '../../../../core/routing/router_observer.dart';

class ProductRepositoryImpl extends GetProductRepository {
  final ProductRemoteDataSource remoteDataSource;

  ProductRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, List<FeaturedProductsModel>>>
      getFeaturedProducts() async {
    try {
      final result = await remoteDataSource.getFeaturedProducts();
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.errorMessageModel.statusMessage));
    } catch (e) {
      return Left(ServerFailure('An unexpected error occurred'));
    }
  }

  @override
  Future<List<FeaturedProductsModel>> sortProductsByPrice(
    List<FeaturedProductsModel> products,
    bool ascending,
  ) async {
    if (products.length <= 1) return products;

    final productsCopy = List<FeaturedProductsModel>.from(products);

    return mergeSort(productsCopy, ascending);
  }

  List<FeaturedProductsModel> mergeSort(
    List<FeaturedProductsModel> products,
    bool ascending,
  ) {
    if (products.length <= 1) return products;

    final mid = products.length ~/ 2;
    final left = mergeSort(products.sublist(0, mid), ascending);
    final right = mergeSort(products.sublist(mid), ascending);

    return merge(left, right, ascending);
  }

  List<FeaturedProductsModel> merge(
    List<FeaturedProductsModel> left,
    List<FeaturedProductsModel> right,
    bool ascending,
  ) {
    final result = <FeaturedProductsModel>[];
    int leftIndex = 0;
    int rightIndex = 0;

    while (leftIndex < left.length && rightIndex < right.length) {
      final leftPrice = left[leftIndex].price ?? 0;
      final rightPrice = right[rightIndex].price ?? 0;

      if ((ascending && leftPrice <= rightPrice) ||
          (!ascending && leftPrice >= rightPrice)) {
        result.add(left[leftIndex]);
        leftIndex++;
      } else {
        result.add(right[rightIndex]);
        rightIndex++;
      }
    }

    result.addAll(left.sublist(leftIndex));
    result.addAll(right.sublist(rightIndex));

    return result;
  }

  @override
  Future<Either<Failure, List<RecommendedProductModel>>>
      getRecommendedProductsByCategory(
          int categryId, int offset, int limit) async {
    try {
      logger.d('Fetching recommended products from remote data source');
      final result = await remoteDataSource.getRecommendedProductsByCategory(
          categryId, offset, limit);
      logger.d('Successfully fetched ${result.length} products');
      return Right(result);
    } on ServerException catch (e) {
      logger.e(
          'DioError in getRecommendedProducts: ${e.errorMessageModel.statusMessage}');
      return Left(ServerFailure(e.errorMessageModel.statusMessage));
    } catch (e, stackTrace) {
      logger.e('Unexpected error in getRecommendedProducts',
          error: e, stackTrace: stackTrace);
      return Left(ServerFailure('An unexpected error occurred'));
    }
  }
}
