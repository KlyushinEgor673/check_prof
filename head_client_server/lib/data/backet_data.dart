import 'package:dio/dio.dart';
import 'package:head_client_server/presentation/backet/backet_presentation.dart';

import '../client.dart';

class BacketData {
  late Client _client;

  BacketData(this._client);

  Future<List<ProductInBacket>> getAll({required String userId}) async {
    final response = await _client.get(path: '/collections/cart/records?');
    final _backetResponse = BacketResponse.fromJson(response);
    List<ProductInBacket> _productsInCart = [];
    for (int i = 0; i < _backetResponse.totalPages; ++i) {
      final response = await _client.get(
        path: '/collections/cart/records?page=${i + 1}',
      );
      final _backetResponse = BacketResponse.fromJson(response);
      for (ProductInBacket product in _backetResponse.items) {
        if (product.count > 0 && product.userId == userId) {
          _productsInCart.add(product);
        }
      }
    }
    return _productsInCart;
  }

  Future<void> addProduct({required AddBacketResponse request}) async {
    await _client.post(
      path: '/collections/cart/records',
      data: request.toJson(),
    );
  }

  Future<void> changeProduct({required ChangeBacketRequest request}) async {
    await _client.patch(
      path: '/collections/cart/records/${request.backetId}',
      data: FormData.fromMap({
        'user_id': request.userId,
        'product_id': request.productId,
        'count': request.count
      }),
    );
  }
}
