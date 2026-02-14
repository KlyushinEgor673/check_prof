// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'backet_presentation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductInBacket _$ProductInBacketFromJson(Map<String, dynamic> json) =>
    _ProductInBacket(
      collectionId: json['collectionId'] as String,
      collectionName: json['collectionName'] as String,
      count: (json['count'] as num).toInt(),
      created: json['created'] as String,
      id: json['id'] as String,
      productId: json['product_id'] as String,
      updated: json['updated'] as String,
      userId: json['user_id'] as String,
    );

Map<String, dynamic> _$ProductInBacketToJson(_ProductInBacket instance) =>
    <String, dynamic>{
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'count': instance.count,
      'created': instance.created,
      'id': instance.id,
      'product_id': instance.productId,
      'updated': instance.updated,
      'user_id': instance.userId,
    };

_BacketResponse _$BacketResponseFromJson(Map<String, dynamic> json) =>
    _BacketResponse(
      items: (json['items'] as List<dynamic>)
          .map((e) => ProductInBacket.fromJson(e as Map<String, dynamic>))
          .toList(),
      page: (json['page'] as num).toInt(),
      perPage: (json['perPage'] as num).toInt(),
      totalItems: (json['totalItems'] as num).toInt(),
      totalPages: (json['totalPages'] as num).toInt(),
    );

Map<String, dynamic> _$BacketResponseToJson(_BacketResponse instance) =>
    <String, dynamic>{
      'items': instance.items,
      'page': instance.page,
      'perPage': instance.perPage,
      'totalItems': instance.totalItems,
      'totalPages': instance.totalPages,
    };
