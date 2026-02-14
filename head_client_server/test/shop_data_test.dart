import 'package:flutter_test/flutter_test.dart';
import 'package:head_client_server/client.dart';
import 'package:head_client_server/data/shop_data.dart';

void main(){
  late Client client;
  late ShopData shopData;

  setUp((){
    client = Client();
    client.setToken('eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb2xsZWN0aW9uSWQiOiJfcGJfdXNlcnNfYXV0aF8iLCJleHAiOjE3NzE0ODYyMDAsImlkIjoiaXVkM291YmpqMWlibjZvIiwicmVmcmVzaGFibGUiOnRydWUsInR5cGUiOiJhdXRoIn0.EV7hpShxeJQi99wQ7fydbTDqS96jTf5YopQINKRxKx8');
    shopData = ShopData(client);
  });

  test('get all products', () async{
    final response = await shopData.getProducts(filter: '');
    print('Твары успешно получены: $response');
  });

  test('get all news', () async {
    final response = await shopData.getNews();
    print('Акции успешно получены: ${response.items}');
  });
}