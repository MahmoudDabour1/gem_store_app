import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';

import '../../../../core/networking/api_constants.dart';
import '../models/featured_products_model.dart';
part 'product_remote_data_source.g.dart';

@RestApi(baseUrl:ApiConstants.apiBaseUrl)
abstract class ProductRemoteDataSource {
  factory ProductRemoteDataSource(Dio dio) {
    return _ProductRemoteDataSource(dio);
  }
  @GET(ApiConstants.featuredProductsUrl)
  Future<List<FeaturedProductsModel>> getFeaturedProducts();
}
