import 'package:dio/dio.dart';
import 'package:gem_store_app/core/database/local/cach_helper.dart';
import 'package:gem_store_app/features/home/data/data_source/product_remote_data_source.dart';
import 'package:gem_store_app/features/home/domain/repository/get_product_repository.dart';
import 'package:gem_store_app/features/home/domain/use_cases/featured_products_use_case.dart';
import 'package:gem_store_app/features/home/domain/use_cases/get_recommended_products_use_case.dart';
import 'package:gem_store_app/features/home/domain/use_cases/get_categories_use_case.dart';
import 'package:gem_store_app/features/home/presentation/controller/home_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

import '../../features/home/data/repository/Get_products_repository_impl.dart';
import '../networking/dio_factory.dart';

final sl = GetIt.instance;

Future<void> setupGetIt() async {
  Dio dio = DioFactory.getDio();
  sl.registerLazySingleton(() => CacheHelper());
  sl.registerLazySingleton<Logger>(() => Logger());

  sl.registerLazySingleton<Dio>(() => dio);

  // 2. Register data sources
  sl.registerLazySingleton<ProductRemoteDataSource>(
    () => ProductRemoteDataSource(sl<Dio>()),
  );

  // 3. Register repositories
  sl.registerLazySingleton<GetProductRepository>(
    () => ProductRepositoryImpl(sl<ProductRemoteDataSource>()),
  );

  // 4. Register use cases
  sl.registerLazySingleton<GetFeaturedProductsUseCase>(
    () => GetFeaturedProductsUseCase(sl<GetProductRepository>()),
  );
  sl.registerLazySingleton<GetRecommendedProductsUseCase>(
    () => GetRecommendedProductsUseCase(sl<GetProductRepository>()),
  );
  sl.registerLazySingleton<GetCategoriesUseCase>(
    () => GetCategoriesUseCase(sl<GetProductRepository>()),
  );

  // 5. Register Cubit/Bloc last
  sl.registerFactory<HomeCubit>(
    () => HomeCubit(
      sl<GetFeaturedProductsUseCase>(),
      sl<GetRecommendedProductsUseCase>(),
      sl<GetCategoriesUseCase>(),
    ),
  );
}
