import 'package:dartz/dartz.dart';

abstract class BaseUseCase<Type, Params> {
  Future<Either<String, Type>> call({Params params});
}
