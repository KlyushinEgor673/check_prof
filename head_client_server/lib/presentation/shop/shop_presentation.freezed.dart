// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop_presentation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ItemProduct {

 String get id; String get title; double get price; String get typeCloses; String get type;
/// Create a copy of ItemProduct
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ItemProductCopyWith<ItemProduct> get copyWith => _$ItemProductCopyWithImpl<ItemProduct>(this as ItemProduct, _$identity);

  /// Serializes this ItemProduct to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ItemProduct&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.price, price) || other.price == price)&&(identical(other.typeCloses, typeCloses) || other.typeCloses == typeCloses)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,price,typeCloses,type);

@override
String toString() {
  return 'ItemProduct(id: $id, title: $title, price: $price, typeCloses: $typeCloses, type: $type)';
}


}

/// @nodoc
abstract mixin class $ItemProductCopyWith<$Res>  {
  factory $ItemProductCopyWith(ItemProduct value, $Res Function(ItemProduct) _then) = _$ItemProductCopyWithImpl;
@useResult
$Res call({
 String id, String title, double price, String typeCloses, String type
});




}
/// @nodoc
class _$ItemProductCopyWithImpl<$Res>
    implements $ItemProductCopyWith<$Res> {
  _$ItemProductCopyWithImpl(this._self, this._then);

  final ItemProduct _self;
  final $Res Function(ItemProduct) _then;

/// Create a copy of ItemProduct
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? price = null,Object? typeCloses = null,Object? type = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,typeCloses: null == typeCloses ? _self.typeCloses : typeCloses // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ItemProduct].
extension ItemProductPatterns on ItemProduct {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ItemProduct value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ItemProduct() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ItemProduct value)  $default,){
final _that = this;
switch (_that) {
case _ItemProduct():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ItemProduct value)?  $default,){
final _that = this;
switch (_that) {
case _ItemProduct() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  double price,  String typeCloses,  String type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ItemProduct() when $default != null:
return $default(_that.id,_that.title,_that.price,_that.typeCloses,_that.type);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  double price,  String typeCloses,  String type)  $default,) {final _that = this;
switch (_that) {
case _ItemProduct():
return $default(_that.id,_that.title,_that.price,_that.typeCloses,_that.type);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  double price,  String typeCloses,  String type)?  $default,) {final _that = this;
switch (_that) {
case _ItemProduct() when $default != null:
return $default(_that.id,_that.title,_that.price,_that.typeCloses,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ItemProduct implements ItemProduct {
   _ItemProduct({required this.id, required this.title, required this.price, required this.typeCloses, required this.type});
  factory _ItemProduct.fromJson(Map<String, dynamic> json) => _$ItemProductFromJson(json);

@override final  String id;
@override final  String title;
@override final  double price;
@override final  String typeCloses;
@override final  String type;

/// Create a copy of ItemProduct
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ItemProductCopyWith<_ItemProduct> get copyWith => __$ItemProductCopyWithImpl<_ItemProduct>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ItemProductToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ItemProduct&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.price, price) || other.price == price)&&(identical(other.typeCloses, typeCloses) || other.typeCloses == typeCloses)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,price,typeCloses,type);

@override
String toString() {
  return 'ItemProduct(id: $id, title: $title, price: $price, typeCloses: $typeCloses, type: $type)';
}


}

/// @nodoc
abstract mixin class _$ItemProductCopyWith<$Res> implements $ItemProductCopyWith<$Res> {
  factory _$ItemProductCopyWith(_ItemProduct value, $Res Function(_ItemProduct) _then) = __$ItemProductCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, double price, String typeCloses, String type
});




}
/// @nodoc
class __$ItemProductCopyWithImpl<$Res>
    implements _$ItemProductCopyWith<$Res> {
  __$ItemProductCopyWithImpl(this._self, this._then);

  final _ItemProduct _self;
  final $Res Function(_ItemProduct) _then;

/// Create a copy of ItemProduct
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? price = null,Object? typeCloses = null,Object? type = null,}) {
  return _then(_ItemProduct(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,typeCloses: null == typeCloses ? _self.typeCloses : typeCloses // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ProductsResponse {

 int get page; int get perPage; int get totalPages; int get totalItems; List<ItemProduct> get items;
/// Create a copy of ProductsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductsResponseCopyWith<ProductsResponse> get copyWith => _$ProductsResponseCopyWithImpl<ProductsResponse>(this as ProductsResponse, _$identity);

  /// Serializes this ProductsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductsResponse&&(identical(other.page, page) || other.page == page)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.totalItems, totalItems) || other.totalItems == totalItems)&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,perPage,totalPages,totalItems,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'ProductsResponse(page: $page, perPage: $perPage, totalPages: $totalPages, totalItems: $totalItems, items: $items)';
}


}

/// @nodoc
abstract mixin class $ProductsResponseCopyWith<$Res>  {
  factory $ProductsResponseCopyWith(ProductsResponse value, $Res Function(ProductsResponse) _then) = _$ProductsResponseCopyWithImpl;
@useResult
$Res call({
 int page, int perPage, int totalPages, int totalItems, List<ItemProduct> items
});




}
/// @nodoc
class _$ProductsResponseCopyWithImpl<$Res>
    implements $ProductsResponseCopyWith<$Res> {
  _$ProductsResponseCopyWithImpl(this._self, this._then);

  final ProductsResponse _self;
  final $Res Function(ProductsResponse) _then;

/// Create a copy of ProductsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? page = null,Object? perPage = null,Object? totalPages = null,Object? totalItems = null,Object? items = null,}) {
  return _then(_self.copyWith(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,totalItems: null == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<ItemProduct>,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductsResponse].
extension ProductsResponsePatterns on ProductsResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductsResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductsResponse value)  $default,){
final _that = this;
switch (_that) {
case _ProductsResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ProductsResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int page,  int perPage,  int totalPages,  int totalItems,  List<ItemProduct> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductsResponse() when $default != null:
return $default(_that.page,_that.perPage,_that.totalPages,_that.totalItems,_that.items);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int page,  int perPage,  int totalPages,  int totalItems,  List<ItemProduct> items)  $default,) {final _that = this;
switch (_that) {
case _ProductsResponse():
return $default(_that.page,_that.perPage,_that.totalPages,_that.totalItems,_that.items);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int page,  int perPage,  int totalPages,  int totalItems,  List<ItemProduct> items)?  $default,) {final _that = this;
switch (_that) {
case _ProductsResponse() when $default != null:
return $default(_that.page,_that.perPage,_that.totalPages,_that.totalItems,_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductsResponse implements ProductsResponse {
   _ProductsResponse({required this.page, required this.perPage, required this.totalPages, required this.totalItems, required final  List<ItemProduct> items}): _items = items;
  factory _ProductsResponse.fromJson(Map<String, dynamic> json) => _$ProductsResponseFromJson(json);

@override final  int page;
@override final  int perPage;
@override final  int totalPages;
@override final  int totalItems;
 final  List<ItemProduct> _items;
@override List<ItemProduct> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of ProductsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductsResponseCopyWith<_ProductsResponse> get copyWith => __$ProductsResponseCopyWithImpl<_ProductsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductsResponse&&(identical(other.page, page) || other.page == page)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.totalItems, totalItems) || other.totalItems == totalItems)&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,perPage,totalPages,totalItems,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'ProductsResponse(page: $page, perPage: $perPage, totalPages: $totalPages, totalItems: $totalItems, items: $items)';
}


}

/// @nodoc
abstract mixin class _$ProductsResponseCopyWith<$Res> implements $ProductsResponseCopyWith<$Res> {
  factory _$ProductsResponseCopyWith(_ProductsResponse value, $Res Function(_ProductsResponse) _then) = __$ProductsResponseCopyWithImpl;
@override @useResult
$Res call({
 int page, int perPage, int totalPages, int totalItems, List<ItemProduct> items
});




}
/// @nodoc
class __$ProductsResponseCopyWithImpl<$Res>
    implements _$ProductsResponseCopyWith<$Res> {
  __$ProductsResponseCopyWithImpl(this._self, this._then);

  final _ProductsResponse _self;
  final $Res Function(_ProductsResponse) _then;

/// Create a copy of ProductsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = null,Object? perPage = null,Object? totalPages = null,Object? totalItems = null,Object? items = null,}) {
  return _then(_ProductsResponse(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,totalItems: null == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ItemProduct>,
  ));
}


}


/// @nodoc
mixin _$NewInfo {

 String get collectionId; String get collectionName; String get created; String get id; String get newsImage; String get updated;
/// Create a copy of NewInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NewInfoCopyWith<NewInfo> get copyWith => _$NewInfoCopyWithImpl<NewInfo>(this as NewInfo, _$identity);

  /// Serializes this NewInfo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NewInfo&&(identical(other.collectionId, collectionId) || other.collectionId == collectionId)&&(identical(other.collectionName, collectionName) || other.collectionName == collectionName)&&(identical(other.created, created) || other.created == created)&&(identical(other.id, id) || other.id == id)&&(identical(other.newsImage, newsImage) || other.newsImage == newsImage)&&(identical(other.updated, updated) || other.updated == updated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,collectionId,collectionName,created,id,newsImage,updated);

@override
String toString() {
  return 'NewInfo(collectionId: $collectionId, collectionName: $collectionName, created: $created, id: $id, newsImage: $newsImage, updated: $updated)';
}


}

/// @nodoc
abstract mixin class $NewInfoCopyWith<$Res>  {
  factory $NewInfoCopyWith(NewInfo value, $Res Function(NewInfo) _then) = _$NewInfoCopyWithImpl;
@useResult
$Res call({
 String collectionId, String collectionName, String created, String id, String newsImage, String updated
});




}
/// @nodoc
class _$NewInfoCopyWithImpl<$Res>
    implements $NewInfoCopyWith<$Res> {
  _$NewInfoCopyWithImpl(this._self, this._then);

  final NewInfo _self;
  final $Res Function(NewInfo) _then;

/// Create a copy of NewInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? collectionId = null,Object? collectionName = null,Object? created = null,Object? id = null,Object? newsImage = null,Object? updated = null,}) {
  return _then(_self.copyWith(
collectionId: null == collectionId ? _self.collectionId : collectionId // ignore: cast_nullable_to_non_nullable
as String,collectionName: null == collectionName ? _self.collectionName : collectionName // ignore: cast_nullable_to_non_nullable
as String,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,newsImage: null == newsImage ? _self.newsImage : newsImage // ignore: cast_nullable_to_non_nullable
as String,updated: null == updated ? _self.updated : updated // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [NewInfo].
extension NewInfoPatterns on NewInfo {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NewInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NewInfo() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NewInfo value)  $default,){
final _that = this;
switch (_that) {
case _NewInfo():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NewInfo value)?  $default,){
final _that = this;
switch (_that) {
case _NewInfo() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String collectionId,  String collectionName,  String created,  String id,  String newsImage,  String updated)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NewInfo() when $default != null:
return $default(_that.collectionId,_that.collectionName,_that.created,_that.id,_that.newsImage,_that.updated);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String collectionId,  String collectionName,  String created,  String id,  String newsImage,  String updated)  $default,) {final _that = this;
switch (_that) {
case _NewInfo():
return $default(_that.collectionId,_that.collectionName,_that.created,_that.id,_that.newsImage,_that.updated);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String collectionId,  String collectionName,  String created,  String id,  String newsImage,  String updated)?  $default,) {final _that = this;
switch (_that) {
case _NewInfo() when $default != null:
return $default(_that.collectionId,_that.collectionName,_that.created,_that.id,_that.newsImage,_that.updated);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NewInfo implements NewInfo {
   _NewInfo({required this.collectionId, required this.collectionName, required this.created, required this.id, required this.newsImage, required this.updated});
  factory _NewInfo.fromJson(Map<String, dynamic> json) => _$NewInfoFromJson(json);

@override final  String collectionId;
@override final  String collectionName;
@override final  String created;
@override final  String id;
@override final  String newsImage;
@override final  String updated;

/// Create a copy of NewInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NewInfoCopyWith<_NewInfo> get copyWith => __$NewInfoCopyWithImpl<_NewInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NewInfoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NewInfo&&(identical(other.collectionId, collectionId) || other.collectionId == collectionId)&&(identical(other.collectionName, collectionName) || other.collectionName == collectionName)&&(identical(other.created, created) || other.created == created)&&(identical(other.id, id) || other.id == id)&&(identical(other.newsImage, newsImage) || other.newsImage == newsImage)&&(identical(other.updated, updated) || other.updated == updated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,collectionId,collectionName,created,id,newsImage,updated);

@override
String toString() {
  return 'NewInfo(collectionId: $collectionId, collectionName: $collectionName, created: $created, id: $id, newsImage: $newsImage, updated: $updated)';
}


}

/// @nodoc
abstract mixin class _$NewInfoCopyWith<$Res> implements $NewInfoCopyWith<$Res> {
  factory _$NewInfoCopyWith(_NewInfo value, $Res Function(_NewInfo) _then) = __$NewInfoCopyWithImpl;
@override @useResult
$Res call({
 String collectionId, String collectionName, String created, String id, String newsImage, String updated
});




}
/// @nodoc
class __$NewInfoCopyWithImpl<$Res>
    implements _$NewInfoCopyWith<$Res> {
  __$NewInfoCopyWithImpl(this._self, this._then);

  final _NewInfo _self;
  final $Res Function(_NewInfo) _then;

/// Create a copy of NewInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? collectionId = null,Object? collectionName = null,Object? created = null,Object? id = null,Object? newsImage = null,Object? updated = null,}) {
  return _then(_NewInfo(
collectionId: null == collectionId ? _self.collectionId : collectionId // ignore: cast_nullable_to_non_nullable
as String,collectionName: null == collectionName ? _self.collectionName : collectionName // ignore: cast_nullable_to_non_nullable
as String,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,newsImage: null == newsImage ? _self.newsImage : newsImage // ignore: cast_nullable_to_non_nullable
as String,updated: null == updated ? _self.updated : updated // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$NewsResponse {

 List<NewInfo> get items; int get page; int get perPage; int get totalItems; int get totalPages;
/// Create a copy of NewsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NewsResponseCopyWith<NewsResponse> get copyWith => _$NewsResponseCopyWithImpl<NewsResponse>(this as NewsResponse, _$identity);

  /// Serializes this NewsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NewsResponse&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.page, page) || other.page == page)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.totalItems, totalItems) || other.totalItems == totalItems)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),page,perPage,totalItems,totalPages);

@override
String toString() {
  return 'NewsResponse(items: $items, page: $page, perPage: $perPage, totalItems: $totalItems, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class $NewsResponseCopyWith<$Res>  {
  factory $NewsResponseCopyWith(NewsResponse value, $Res Function(NewsResponse) _then) = _$NewsResponseCopyWithImpl;
@useResult
$Res call({
 List<NewInfo> items, int page, int perPage, int totalItems, int totalPages
});




}
/// @nodoc
class _$NewsResponseCopyWithImpl<$Res>
    implements $NewsResponseCopyWith<$Res> {
  _$NewsResponseCopyWithImpl(this._self, this._then);

  final NewsResponse _self;
  final $Res Function(NewsResponse) _then;

/// Create a copy of NewsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? page = null,Object? perPage = null,Object? totalItems = null,Object? totalPages = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<NewInfo>,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,totalItems: null == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [NewsResponse].
extension NewsResponsePatterns on NewsResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NewsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NewsResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NewsResponse value)  $default,){
final _that = this;
switch (_that) {
case _NewsResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NewsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _NewsResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<NewInfo> items,  int page,  int perPage,  int totalItems,  int totalPages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NewsResponse() when $default != null:
return $default(_that.items,_that.page,_that.perPage,_that.totalItems,_that.totalPages);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<NewInfo> items,  int page,  int perPage,  int totalItems,  int totalPages)  $default,) {final _that = this;
switch (_that) {
case _NewsResponse():
return $default(_that.items,_that.page,_that.perPage,_that.totalItems,_that.totalPages);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<NewInfo> items,  int page,  int perPage,  int totalItems,  int totalPages)?  $default,) {final _that = this;
switch (_that) {
case _NewsResponse() when $default != null:
return $default(_that.items,_that.page,_that.perPage,_that.totalItems,_that.totalPages);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NewsResponse implements NewsResponse {
   _NewsResponse({required final  List<NewInfo> items, required this.page, required this.perPage, required this.totalItems, required this.totalPages}): _items = items;
  factory _NewsResponse.fromJson(Map<String, dynamic> json) => _$NewsResponseFromJson(json);

 final  List<NewInfo> _items;
@override List<NewInfo> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  int page;
@override final  int perPage;
@override final  int totalItems;
@override final  int totalPages;

/// Create a copy of NewsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NewsResponseCopyWith<_NewsResponse> get copyWith => __$NewsResponseCopyWithImpl<_NewsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NewsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NewsResponse&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.page, page) || other.page == page)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.totalItems, totalItems) || other.totalItems == totalItems)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),page,perPage,totalItems,totalPages);

@override
String toString() {
  return 'NewsResponse(items: $items, page: $page, perPage: $perPage, totalItems: $totalItems, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class _$NewsResponseCopyWith<$Res> implements $NewsResponseCopyWith<$Res> {
  factory _$NewsResponseCopyWith(_NewsResponse value, $Res Function(_NewsResponse) _then) = __$NewsResponseCopyWithImpl;
@override @useResult
$Res call({
 List<NewInfo> items, int page, int perPage, int totalItems, int totalPages
});




}
/// @nodoc
class __$NewsResponseCopyWithImpl<$Res>
    implements _$NewsResponseCopyWith<$Res> {
  __$NewsResponseCopyWithImpl(this._self, this._then);

  final _NewsResponse _self;
  final $Res Function(_NewsResponse) _then;

/// Create a copy of NewsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? page = null,Object? perPage = null,Object? totalItems = null,Object? totalPages = null,}) {
  return _then(_NewsResponse(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<NewInfo>,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,totalItems: null == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$InfoProductResponse {

 String get approximateCost; String get collectionId; String get collectionName; String get created; String get description; String get id; double get price; String get title; String get type; String get typeCloses; String get updated;
/// Create a copy of InfoProductResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InfoProductResponseCopyWith<InfoProductResponse> get copyWith => _$InfoProductResponseCopyWithImpl<InfoProductResponse>(this as InfoProductResponse, _$identity);

  /// Serializes this InfoProductResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InfoProductResponse&&(identical(other.approximateCost, approximateCost) || other.approximateCost == approximateCost)&&(identical(other.collectionId, collectionId) || other.collectionId == collectionId)&&(identical(other.collectionName, collectionName) || other.collectionName == collectionName)&&(identical(other.created, created) || other.created == created)&&(identical(other.description, description) || other.description == description)&&(identical(other.id, id) || other.id == id)&&(identical(other.price, price) || other.price == price)&&(identical(other.title, title) || other.title == title)&&(identical(other.type, type) || other.type == type)&&(identical(other.typeCloses, typeCloses) || other.typeCloses == typeCloses)&&(identical(other.updated, updated) || other.updated == updated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,approximateCost,collectionId,collectionName,created,description,id,price,title,type,typeCloses,updated);

@override
String toString() {
  return 'InfoProductResponse(approximateCost: $approximateCost, collectionId: $collectionId, collectionName: $collectionName, created: $created, description: $description, id: $id, price: $price, title: $title, type: $type, typeCloses: $typeCloses, updated: $updated)';
}


}

/// @nodoc
abstract mixin class $InfoProductResponseCopyWith<$Res>  {
  factory $InfoProductResponseCopyWith(InfoProductResponse value, $Res Function(InfoProductResponse) _then) = _$InfoProductResponseCopyWithImpl;
@useResult
$Res call({
 String approximateCost, String collectionId, String collectionName, String created, String description, String id, double price, String title, String type, String typeCloses, String updated
});




}
/// @nodoc
class _$InfoProductResponseCopyWithImpl<$Res>
    implements $InfoProductResponseCopyWith<$Res> {
  _$InfoProductResponseCopyWithImpl(this._self, this._then);

  final InfoProductResponse _self;
  final $Res Function(InfoProductResponse) _then;

/// Create a copy of InfoProductResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? approximateCost = null,Object? collectionId = null,Object? collectionName = null,Object? created = null,Object? description = null,Object? id = null,Object? price = null,Object? title = null,Object? type = null,Object? typeCloses = null,Object? updated = null,}) {
  return _then(_self.copyWith(
approximateCost: null == approximateCost ? _self.approximateCost : approximateCost // ignore: cast_nullable_to_non_nullable
as String,collectionId: null == collectionId ? _self.collectionId : collectionId // ignore: cast_nullable_to_non_nullable
as String,collectionName: null == collectionName ? _self.collectionName : collectionName // ignore: cast_nullable_to_non_nullable
as String,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,typeCloses: null == typeCloses ? _self.typeCloses : typeCloses // ignore: cast_nullable_to_non_nullable
as String,updated: null == updated ? _self.updated : updated // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [InfoProductResponse].
extension InfoProductResponsePatterns on InfoProductResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InfoProductResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InfoProductResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InfoProductResponse value)  $default,){
final _that = this;
switch (_that) {
case _InfoProductResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InfoProductResponse value)?  $default,){
final _that = this;
switch (_that) {
case _InfoProductResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String approximateCost,  String collectionId,  String collectionName,  String created,  String description,  String id,  double price,  String title,  String type,  String typeCloses,  String updated)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InfoProductResponse() when $default != null:
return $default(_that.approximateCost,_that.collectionId,_that.collectionName,_that.created,_that.description,_that.id,_that.price,_that.title,_that.type,_that.typeCloses,_that.updated);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String approximateCost,  String collectionId,  String collectionName,  String created,  String description,  String id,  double price,  String title,  String type,  String typeCloses,  String updated)  $default,) {final _that = this;
switch (_that) {
case _InfoProductResponse():
return $default(_that.approximateCost,_that.collectionId,_that.collectionName,_that.created,_that.description,_that.id,_that.price,_that.title,_that.type,_that.typeCloses,_that.updated);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String approximateCost,  String collectionId,  String collectionName,  String created,  String description,  String id,  double price,  String title,  String type,  String typeCloses,  String updated)?  $default,) {final _that = this;
switch (_that) {
case _InfoProductResponse() when $default != null:
return $default(_that.approximateCost,_that.collectionId,_that.collectionName,_that.created,_that.description,_that.id,_that.price,_that.title,_that.type,_that.typeCloses,_that.updated);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InfoProductResponse implements InfoProductResponse {
   _InfoProductResponse({required this.approximateCost, required this.collectionId, required this.collectionName, required this.created, required this.description, required this.id, required this.price, required this.title, required this.type, required this.typeCloses, required this.updated});
  factory _InfoProductResponse.fromJson(Map<String, dynamic> json) => _$InfoProductResponseFromJson(json);

@override final  String approximateCost;
@override final  String collectionId;
@override final  String collectionName;
@override final  String created;
@override final  String description;
@override final  String id;
@override final  double price;
@override final  String title;
@override final  String type;
@override final  String typeCloses;
@override final  String updated;

/// Create a copy of InfoProductResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InfoProductResponseCopyWith<_InfoProductResponse> get copyWith => __$InfoProductResponseCopyWithImpl<_InfoProductResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InfoProductResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InfoProductResponse&&(identical(other.approximateCost, approximateCost) || other.approximateCost == approximateCost)&&(identical(other.collectionId, collectionId) || other.collectionId == collectionId)&&(identical(other.collectionName, collectionName) || other.collectionName == collectionName)&&(identical(other.created, created) || other.created == created)&&(identical(other.description, description) || other.description == description)&&(identical(other.id, id) || other.id == id)&&(identical(other.price, price) || other.price == price)&&(identical(other.title, title) || other.title == title)&&(identical(other.type, type) || other.type == type)&&(identical(other.typeCloses, typeCloses) || other.typeCloses == typeCloses)&&(identical(other.updated, updated) || other.updated == updated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,approximateCost,collectionId,collectionName,created,description,id,price,title,type,typeCloses,updated);

@override
String toString() {
  return 'InfoProductResponse(approximateCost: $approximateCost, collectionId: $collectionId, collectionName: $collectionName, created: $created, description: $description, id: $id, price: $price, title: $title, type: $type, typeCloses: $typeCloses, updated: $updated)';
}


}

/// @nodoc
abstract mixin class _$InfoProductResponseCopyWith<$Res> implements $InfoProductResponseCopyWith<$Res> {
  factory _$InfoProductResponseCopyWith(_InfoProductResponse value, $Res Function(_InfoProductResponse) _then) = __$InfoProductResponseCopyWithImpl;
@override @useResult
$Res call({
 String approximateCost, String collectionId, String collectionName, String created, String description, String id, double price, String title, String type, String typeCloses, String updated
});




}
/// @nodoc
class __$InfoProductResponseCopyWithImpl<$Res>
    implements _$InfoProductResponseCopyWith<$Res> {
  __$InfoProductResponseCopyWithImpl(this._self, this._then);

  final _InfoProductResponse _self;
  final $Res Function(_InfoProductResponse) _then;

/// Create a copy of InfoProductResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? approximateCost = null,Object? collectionId = null,Object? collectionName = null,Object? created = null,Object? description = null,Object? id = null,Object? price = null,Object? title = null,Object? type = null,Object? typeCloses = null,Object? updated = null,}) {
  return _then(_InfoProductResponse(
approximateCost: null == approximateCost ? _self.approximateCost : approximateCost // ignore: cast_nullable_to_non_nullable
as String,collectionId: null == collectionId ? _self.collectionId : collectionId // ignore: cast_nullable_to_non_nullable
as String,collectionName: null == collectionName ? _self.collectionName : collectionName // ignore: cast_nullable_to_non_nullable
as String,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,typeCloses: null == typeCloses ? _self.typeCloses : typeCloses // ignore: cast_nullable_to_non_nullable
as String,updated: null == updated ? _self.updated : updated // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
