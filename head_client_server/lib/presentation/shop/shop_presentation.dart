import 'package:freezed_annotation/freezed_annotation.dart';

part 'shop_presentation.g.dart';

part 'shop_presentation.freezed.dart';

@freezed
abstract class ItemProduct with _$ItemProduct {
  factory ItemProduct({
    required String id,
    required String title,
    required double price,
    required String typeCloses,
    required String type,
  }) = _ItemProduct;

  factory ItemProduct.fromJson(Map<String, dynamic> json) =>
      _$ItemProductFromJson(json);
}

@freezed
abstract class ProductsResponse with _$ProductsResponse {
  factory ProductsResponse({
    required int page,
    required int perPage,
    required int totalPages,
    required int totalItems,
    required List<ItemProduct> items,
  }) = _ProductsResponse;

  factory ProductsResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductsResponseFromJson(json);
}

@freezed
abstract class NewInfo with _$NewInfo {
  factory NewInfo({
    required String collectionId,
    required String collectionName,
    required String created,
    required String id,
    required String newsImage,
    required String updated,
  }) = _NewInfo;

  factory NewInfo.fromJson(Map<String, dynamic> json) =>
      _$NewInfoFromJson(json);
}

@freezed
abstract class NewsResponse with _$NewsResponse {
  factory NewsResponse({
    required List<NewInfo> items,
    required int page,
    required int perPage,
    required int totalItems,
    required int totalPages,
  }) = _NewsResponse;

  factory NewsResponse.fromJson(Map<String, dynamic> json) =>
      _$NewsResponseFromJson(json);
}

@freezed
abstract class InfoProductResponse with _$InfoProductResponse {
  factory InfoProductResponse({
    required String approximateCost,
    required String collectionId,
    required String collectionName,
    required String created,
    required String description,
    required String id,
    required double price,
    required String title,
    required String type,
    required String typeCloses,
    required String updated,
  }) = _InfoProductResponse;

  factory InfoProductResponse.fromJson(Map<String, dynamic> json) =>
      _$InfoProductResponseFromJson(json);
}
