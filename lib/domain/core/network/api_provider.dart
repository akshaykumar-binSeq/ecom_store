import 'package:dio/dio.dart';
import 'package:ecom_store/domain/core/network/api_interceptor.dart';

class ApiProvider {
  Dio? _dio;

  static String baseUrl = 'https://www.mocky.io/';

  ApiProvider() {
    BaseOptions options;
    options = BaseOptions(
      baseUrl: baseUrl,
      receiveTimeout: 10000,
      connectTimeout: 10000,
    );

    _dio = Dio(options);
    _dio!.interceptors.add(ApiInterceptor());
  }

  Dio getJsonInstance() {
    _dio!.options.headers.addAll(
      {
        "Content-Type": "application/json",
      },
    );
    return _dio!;
  }

  Dio getMultipartInstance() {
    _dio!.options.headers.addAll({"Content-Type": "multipart/form-data"});
    return _dio!;
  }
}
