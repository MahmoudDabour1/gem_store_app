import '../enums.dart';

class RequestState<T> {
  final RequestStatus status;
  final T? data;
  final String? errorMessage;
  final int? statusCode;

  const RequestState._({
    required this.status,
    this.data,
    this.errorMessage,
    this.statusCode,
  });

  const RequestState.idle() : this._(status: RequestStatus.idle);
  const RequestState.loading() : this._(status: RequestStatus.loading);
  const RequestState.success(T data)
      : this._(status: RequestStatus.success, data: data);

  const RequestState.error({
    required String message,
    int? code,
  }) : this._(
          status: RequestStatus.error,
          errorMessage: message,
          statusCode: code,
        );
}
