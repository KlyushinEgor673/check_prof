import 'package:dio/dio.dart';

class Client {
  late Dio _dio;

  String? token;

  void setToken(String newToken) {
    token = newToken;
  }

  Client() {
    _dio = Dio(BaseOptions(baseUrl: 'https://api.matule.ru/api'));
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          if (token != null) {
            options.headers['Authorization'] = 'Bearer $token';
          }
          return handler.next(options);
        },
      ),
    );
  }

  String getUrl(){
    return _dio.options.baseUrl;
  }

  Future<T> post<T>({
    required String path,
    required dynamic data,
    Map<String, dynamic>? queryParameters,
  }) async {
    final response = await _dio.post(
      path,
      data: data,
      queryParameters: queryParameters,
    );
    return response.data as T;
  }

  Future<T> get<T>({
    required String path,
    Map<String, dynamic>? queryParameters,
  }) async {
    final response = await _dio.get(path, queryParameters: queryParameters);
    return response.data as T;
  }

  Future<T> patch<T>({
    required String path,
    required dynamic data,
    Map<String, dynamic>? queryParameters,
  }) async {
    final response = await _dio.patch(
      path,
      data: data,
      queryParameters: queryParameters,
    );
    return response.data as T;
  }
}
