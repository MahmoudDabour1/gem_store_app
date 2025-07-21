import 'package:dio/dio.dart';
import 'package:gem_store_app/features/home/data/models/recommended_product_model.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

import '../../../../core/networking/api_constants.dart';
import '../models/featured_products_model.dart';

part 'product_remote_data_source.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ProductRemoteDataSource {
  factory ProductRemoteDataSource(Dio dio) {
    return _ProductRemoteDataSource(dio);
  }

  @GET(ApiConstants.featuredProductsUrl)
  Future<List<FeaturedProductsModel>> getFeaturedProducts(
    @Query("offset") int offset,
    @Query("limit") int limit,
  );

  @GET("${ApiConstants.getRecommendedProductsByCategory}{categoryId}/products")
  Future<List<RecommendedProductModel>> getRecommendedProductsByCategory(
    @Path("categoryId") int categoryId,
    @Query("offset") int offset,
    @Query("limit") int limit,
  );
}
