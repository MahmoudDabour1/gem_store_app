import 'package:dio/dio.dart';
import 'package:gem_store_app/core/database/remote/api_consumer.dart';
import 'package:gem_store_app/core/database/remote/api_interceptors.dart';
import 'package:gem_store_app/core/database/remote/end_points.dart';
import 'package:gem_store_app/core/errors/error_model.dart';
import 'package:gem_store_app/core/errors/exceptions.dart';

class DioConsumer extends ApiConsumer {
  Dio dio;
  DioConsumer(this.dio) {
    dio.options.baseUrl = EndPoint.baseurl;
    dio.interceptors.add(ApiInterceptors());
    dio.interceptors.add(LogInterceptor(
      request: true,
      requestHeader: true,
      requestBody: true,
      responseHeader: true,
      responseBody: true,
      error: true,
    ));
  }
  @override
  Future delete(path,
      {Object? data, Map<String, dynamic>? queryParameters}) async {
    try {
      final res =
          await dio.delete(path, data: data, queryParameters: queryParameters);
      return res.data;
    } on DioException catch (e) {
      handleDioException(e);
    }
  }

  @override
  Future get(path,
      {Object? data, Map<String, dynamic>? queryParameters}) async {
    try {
      final res =
          await dio.get(path, data: data, queryParameters: queryParameters);
      return res.data;
    } on DioException catch (e) {
      handleDioException(e);
    }
  }

  @override
  Future patch(
    path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    bool isFormData = false,
  }) async {
    try {
      final res = await dio.patch(
        path,
        data: isFormData ? FormData.fromMap(data) : data,
        queryParameters: queryParameters,
        options: options,
      );
      return res.data;
    } on DioException catch (e) {
      handleDioException(e);
    }
  }

  @override
  Future post(path,
      {dynamic data,
      Map<String, dynamic>? queryParameters,
      bool isFormData = false}) async {
    try {
      final res = await dio.post(path,
          data: isFormData ? FormData.fromMap(data) : data,
          queryParameters: queryParameters);
      return res.data;
    } on DioException catch (e) {
      handleDioException(e);
    }
  }
}

handleDioException(e) {
  switch (e.type) {
    case DioExceptionType.badCertificate:
      throw BadCertificateException(ErrorModel.fromJson(e.response!.data));
    case DioExceptionType.connectionTimeout:
      throw ConnectionTimeoutException(ErrorModel.fromJson(e.response!.data));
    case DioExceptionType.receiveTimeout:
    case DioExceptionType.connectionError:
    case DioExceptionType.sendTimeout:
      throw ServerException(ErrorModel.fromJson(e.response!.data));

    case DioExceptionType.badResponse:
      switch (e.response?.statusCode) {
        case 400: //bad request
          throw BadRequestException(ErrorModel.fromJson(e.response!.data));

        case 401: //unauthorized
          throw UnauthorizedException(ErrorModel.fromJson(e.response!.data));

        case 403: //forbidden
          throw ForbiddenException(ErrorModel.fromJson(e.response!.data));

        case 404: //notFound
          throw NotFoundException(ErrorModel.fromJson(e.response!.data));

        case 409: //conflict
          throw ConflictException(ErrorModel.fromJson(e.response!.data));
        case 500:
          throw CancleExeption('Internal Server Error' as ErrorModel);
        case 504:
          throw BadRequestException(ErrorModel.fromJson(e.response!.data));

        // print(e.response);
      }
    case DioExceptionType.cancel:
      throw ServerException(ErrorModel(errorMessage: e.toString()));

    case DioExceptionType.unknown:
      throw ServerException(ErrorModel(errorMessage: e.toString()));

    // throw ServerException('badResponse');
  }
}
