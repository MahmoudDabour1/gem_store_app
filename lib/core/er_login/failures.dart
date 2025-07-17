import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;
  final int statusCode;

  const Failure(this.message, this.statusCode);

  @override
  List<Object> get props => [message, statusCode];
}

class ServerFailure extends Failure {
  const ServerFailure(super.message, super.statusCode);
}

class DatabaseFailure extends Failure {
  const DatabaseFailure(super.message, [super.statusCode = -1]);
}
