import 'package:flutter_test/flutter_test.dart';
import 'package:head_client_server/client.dart';
import 'package:head_client_server/data/user_data.dart';
import 'package:head_client_server/presentation/user/user_presentation.dart';

void main() {
  late Client client;
  late UserData userData;

  setUp(() {
    client = Client();
    userData = UserData(client);
  });

  test('entrance', () async {
    final request = AuthRequest(
        identity: 'ohaeohae673@gmail.com', password: '12345678');
    final response = await userData.auth(request);
    print('Запрос на вход пройден. Полученные данные: $response');
  });

  test('get info user', () async {
    client.setToken('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2xsZWN0aW9uSWQiOiJfcGJfdXNlcnNfYXV0aF8iLCJleHAiOjE3NzE0ODYyMDAsImlkIjoiaXVkM291YmpqMWlibjZvIiwicmVmcmVzaGFibGUiOnRydWUsInR5cGUiOiJhdXRoIn0.EV7hpShxeJQi99wQ7fydbTDqS96jTf5YopQINKRxKx8');
    final response = await userData.info('iud3oubjj1ibn6o');
    print('Информация о пользователе получена: $response');
  });
}