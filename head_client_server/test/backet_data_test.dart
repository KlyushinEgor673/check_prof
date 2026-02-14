import 'package:flutter_test/flutter_test.dart';
import 'package:head_client_server/client.dart';
import 'package:head_client_server/data/backet_data.dart';

void main() {
  late Client client;
  late BacketData backetData;

  setUp(() {
    client = Client();
    client.setToken(
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2xsZWN0aW9uSWQiOiJfcGJfdXNlcnNfYXV0aF8iLCJleHAiOjE3NzE1NzM3MzgsImlkIjoiODhoaXQ2cGxzYWFkeTR5IiwicmVmcmVzaGFibGUiOnRydWUsInR5cGUiOiJhdXRoIn0.Lu4gmWo4042SDnn9XPLNMWY4taagPQOErSZw27nc7O8',
    );
    backetData = BacketData(client);
  });

  test('get backet', () async {
    final response = await backetData.getAll(userId: '88hit6plsaady4y');
    print('Корзина получена: $response');
  });

  // test('add product', () async{
  //
  //   await backetData.addProduct(request: )
  // });
}
