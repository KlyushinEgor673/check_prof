import 'package:freezed_annotation/freezed_annotation.dart';

part 'backet_presentation.freezed.dart';

part 'backet_presentation.g.dart';

@freezed
abstract class ProductInBacket with _$ProductInBacket {
  factory ProductInBacket({
    required String collectionId,
    required String collectionName,
    required int count,
    required String created,
    required String id,
    @JsonKey(name: 'product_id') required String productId,
    required String updated,
    @JsonKey(name: 'user_id') required String userId,
  }) = _ProductInBacket;

  factory ProductInBacket.fromJson(Map<String, dynamic> json) =>
      _$ProductInBacketFromJson(json);
}

@freezed
abstract class BacketResponse with _$BacketResponse {
  factory BacketResponse({
    required List<ProductInBacket> items,
    required int page,
    required int perPage,
    required int totalItems,
    required int totalPages,
  }) = _BacketResponse;

  factory BacketResponse.fromJson(Map<String, dynamic> json) =>
      _$BacketResponseFromJson(json);
}
