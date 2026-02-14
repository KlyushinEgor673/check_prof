import 'package:head_client_server/client.dart';
import 'package:head_client_server/presentation/shop/shop_presentation.dart';

class ShopData {
  final Client _client;

  ShopData(this._client);

  Future<ProductsResponse> getProducts({required String filter}) async {
    final response = await _client.get<Map<String, dynamic>>(
      path: '/collections/products/records',
      queryParameters: {'filter': "(title ?~ '$filter')"},
    );
    final productsResponse = ProductsResponse.fromJson(response);
    return productsResponse;
  }

  Future<NewsResponse> getNews() async {
    final response = await _client.get<Map<String, dynamic>>(
      path: '/collections/news/records',
    );
    final newsResponse = NewsResponse.fromJson(response);
    return newsResponse;
  }

  Future<InfoProductResponse> getInfoProduct(String productId) async {
    final response = await _client.get<Map<String, dynamic>>(
      path: '/collections/products/records/$productId',
    );
    final _infoProductResponse = InfoProductResponse.fromJson(response);
    return _infoProductResponse;
  }
}
