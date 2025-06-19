import 'package:izy_test/config/env/env.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

class DioConfig {
  static const Duration connectTimeout = Duration(seconds: 100);
  static const Duration receiveTimeout = Duration(seconds: 100);

  static Dio createDio(Logger logger) {
    final dio = Dio(BaseOptions(
      baseUrl: Environment.baseUrl,
      connectTimeout: connectTimeout,
      receiveTimeout: receiveTimeout,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    ));

    // Add interceptors
    dio.interceptors.addAll([
      _createLoggingInterceptor(logger),
      _createAuthInterceptor(),
      _createErrorInterceptor(),
    ]);

    return dio;
  }

  static InterceptorsWrapper _createLoggingInterceptor(Logger logger) {
    return InterceptorsWrapper(
      onRequest: (options, handler) {
        logger.i('Request: ${options.method} ${options.path}');
        logger.d('Request data: ${options.data}');
        return handler.next(options);
      },
      onResponse: (response, handler) {
        logger.i('Response: ${response.statusCode}');
        logger.d('Response data: ${response.data}');
        return handler.next(response);
      },
      onError: (error, handler) {
        logger.e('Error: ${error.message}');
        logger.e('Error response: ${error.response?.data}');
        return handler.next(error);
      },
    );
  }

  static InterceptorsWrapper _createAuthInterceptor() {
    return InterceptorsWrapper(
      onRequest: (options, handler) {
        return handler.next(options);
      },
    );
  }

  static InterceptorsWrapper _createErrorInterceptor() {
    return InterceptorsWrapper(
      onError: (error, handler) {
        return handler.next(error);
      },
    );
  }
}
