import 'package:gem_store_app/core/database/local/cach_helper.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

final sl = GetIt.instance;
Future<void> setupGetIt() async {
  sl.registerLazySingleton(() => CacheHelper());
  sl.registerLazySingleton<Logger>(() => Logger());
}
