import 'package:dio/dio.dart';

class ApiInterceptors extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    //options.headers[ApiKeys.contentType] = ApiKeys.applicationJson;

    super.onRequest(options, handler);
  }
}
