import 'package:dio/dio.dart';

abstract class ApiConsumer {
  Future<dynamic> get(
    path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
  });
  Future<dynamic> delete(
    path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
  });
  Future<dynamic> post(
    path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    bool isFormData = false,
  });
  Future<dynamic> patch(
    path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    bool isFormData = false,
  });
}
