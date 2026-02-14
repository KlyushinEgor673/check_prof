import 'package:dio/dio.dart';
import 'package:head_client_server/client.dart';
import 'package:head_client_server/presentation/user/user_presentation.dart';

class UserData {
  final Client _client;

  UserData(this._client);

  Future<AuthResponse> auth(AuthRequest request) async {
    try {
      final response = await _client.post<Map<String, dynamic>>(
        path: '/collections/users/auth-with-password',
        data: request.toJson(),
      );
      final authResponse = AuthResponse.fromJson(response);
      _client.setToken(authResponse.token);
      return authResponse;
    } on DioException catch(e){
      if (e.response?.statusCode == 400){
        throw Exception('Неверный логин или пароль');
      }
      rethrow;
    }
  }

  Future<RecordResponse> info(String userId) async {
    final response = await _client.get(
      path: '/collections/users/records/$userId',
    );
    final recordResponse = RecordResponse.fromJson(response);
    return recordResponse;
  }
}
