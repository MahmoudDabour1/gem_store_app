
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

final sl = GetIt.instance;
Future<void> setupGetIt()async{
  sl.registerLazySingleton<Logger>(()=> Logger());
}