// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_presentation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ItemProduct _$ItemProductFromJson(Map<String, dynamic> json) => _ItemProduct(
  id: json['id'] as String,
  title: json['title'] as String,
  price: (json['price'] as num).toDouble(),
  typeCloses: json['typeCloses'] as String,
  type: json['type'] as String,
);

Map<String, dynamic> _$ItemProductToJson(_ItemProduct instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'typeCloses': instance.typeCloses,
      'type': instance.type,
    };

_ProductsResponse _$ProductsResponseFromJson(Map<String, dynamic> json) =>
    _ProductsResponse(
      page: (json['page'] as num).toInt(),
      perPage: (json['perPage'] as num).toInt(),
      totalPages: (json['totalPages'] as num).toInt(),
      totalItems: (json['totalItems'] as num).toInt(),
      items: (json['items'] as List<dynamic>)
          .map((e) => ItemProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProductsResponseToJson(_ProductsResponse instance) =>
    <String, dynamic>{
      'page': instance.page,
      'perPage': instance.perPage,
      'totalPages': instance.totalPages,
      'totalItems': instance.totalItems,
      'items': instance.items,
    };

_NewInfo _$NewInfoFromJson(Map<String, dynamic> json) => _NewInfo(
  collectionId: json['collectionId'] as String,
  collectionName: json['collectionName'] as String,
  created: json['created'] as String,
  id: json['id'] as String,
  newsImage: json['newsImage'] as String,
  updated: json['updated'] as String,
);

Map<String, dynamic> _$NewInfoToJson(_NewInfo instance) => <String, dynamic>{
  'collectionId': instance.collectionId,
  'collectionName': instance.collectionName,
  'created': instance.created,
  'id': instance.id,
  'newsImage': instance.newsImage,
  'updated': instance.updated,
};

_NewsResponse _$NewsResponseFromJson(Map<String, dynamic> json) =>
    _NewsResponse(
      items: (json['items'] as List<dynamic>)
          .map((e) => NewInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      page: (json['page'] as num).toInt(),
      perPage: (json['perPage'] as num).toInt(),
      totalItems: (json['totalItems'] as num).toInt(),
      totalPages: (json['totalPages'] as num).toInt(),
    );

Map<String, dynamic> _$NewsResponseToJson(_NewsResponse instance) =>
    <String, dynamic>{
      'items': instance.items,
      'page': instance.page,
      'perPage': instance.perPage,
      'totalItems': instance.totalItems,
      'totalPages': instance.totalPages,
    };
