import 'package:dio/dio.dart';
import 'package:gem_store_app/core/database/local/cach_helper.dart';
import 'package:gem_store_app/core/database/remote/api_consumer.dart';
import 'package:gem_store_app/core/database/remote/dio_consumer.dart';
import 'package:gem_store_app/features/home/data/data_source/get_products_data_source.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

void initServiceLocator() {
  sl.registerLazySingleton(() => CacheHelper());
  sl.registerLazySingleton<ApiConsumer>(() => DioConsumer(sl()));
  sl.registerLazySingleton(() => Dio());
  sl.registerLazySingleton(() => GetProductsRemoteDataSource());
}
