import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'logging_interceptor.dart';

class DioClient {
  final String? baseUrl;
  final LoggingInterceptor? loggingInterceptor;
  final SharedPreferences? sharedPreferences;

  Dio? dio;
  String? auth;

  DioClient(
    this.baseUrl,
    Dio dioC, {
    this.loggingInterceptor,
    this.sharedPreferences,
  }) {
    dio = dioC;
    dio!
      ..options.baseUrl = baseUrl!
      ..options.connectTimeout = 30000
      ..options.receiveTimeout = 30000
      ..httpClientAdapter;
    dio!.interceptors.add(loggingInterceptor!);
  }

  Future<Response> post(
    String uri, {
    data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      var response = await dio!.post(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } on FormatException catch (_) {
      throw const FormatException("Unable to process the data");
    } catch (e) {
      rethrow;
    }
  }
}
