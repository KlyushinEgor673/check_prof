// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'backet_presentation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductInBacket {

 String get collectionId; String get collectionName; int get count; String get created; String get id;@JsonKey(name: 'product_id') String get productId; String get updated;@JsonKey(name: 'user_id') String get userId;
/// Create a copy of ProductInBacket
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductInBacketCopyWith<ProductInBacket> get copyWith => _$ProductInBacketCopyWithImpl<ProductInBacket>(this as ProductInBacket, _$identity);

  /// Serializes this ProductInBacket to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductInBacket&&(identical(other.collectionId, collectionId) || other.collectionId == collectionId)&&(identical(other.collectionName, collectionName) || other.collectionName == collectionName)&&(identical(other.count, count) || other.count == count)&&(identical(other.created, created) || other.created == created)&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.updated, updated) || other.updated == updated)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,collectionId,collectionName,count,created,id,productId,updated,userId);

@override
String toString() {
  return 'ProductInBacket(collectionId: $collectionId, collectionName: $collectionName, count: $count, created: $created, id: $id, productId: $productId, updated: $updated, userId: $userId)';
}


}

/// @nodoc
abstract mixin class $ProductInBacketCopyWith<$Res>  {
  factory $ProductInBacketCopyWith(ProductInBacket value, $Res Function(ProductInBacket) _then) = _$ProductInBacketCopyWithImpl;
@useResult
$Res call({
 String collectionId, String collectionName, int count, String created, String id,@JsonKey(name: 'product_id') String productId, String updated,@JsonKey(name: 'user_id') String userId
});




}
/// @nodoc
class _$ProductInBacketCopyWithImpl<$Res>
    implements $ProductInBacketCopyWith<$Res> {
  _$ProductInBacketCopyWithImpl(this._self, this._then);

  final ProductInBacket _self;
  final $Res Function(ProductInBacket) _then;

/// Create a copy of ProductInBacket
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? collectionId = null,Object? collectionName = null,Object? count = null,Object? created = null,Object? id = null,Object? productId = null,Object? updated = null,Object? userId = null,}) {
  return _then(_self.copyWith(
collectionId: null == collectionId ? _self.collectionId : collectionId // ignore: cast_nullable_to_non_nullable
as String,collectionName: null == collectionName ? _self.collectionName : collectionName // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,updated: null == updated ? _self.updated : updated // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductInBacket].
extension ProductInBacketPatterns on ProductInBacket {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductInBacket value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductInBacket() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductInBacket value)  $default,){
final _that = this;
switch (_that) {
case _ProductInBacket():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductInBacket value)?  $default,){
final _that = this;
switch (_that) {
case _ProductInBacket() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String collectionId,  String collectionName,  int count,  String created,  String id, @JsonKey(name: 'product_id')  String productId,  String updated, @JsonKey(name: 'user_id')  String userId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductInBacket() when $default != null:
return $default(_that.collectionId,_that.collectionName,_that.count,_that.created,_that.id,_that.productId,_that.updated,_that.userId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String collectionId,  String collectionName,  int count,  String created,  String id, @JsonKey(name: 'product_id')  String productId,  String updated, @JsonKey(name: 'user_id')  String userId)  $default,) {final _that = this;
switch (_that) {
case _ProductInBacket():
return $default(_that.collectionId,_that.collectionName,_that.count,_that.created,_that.id,_that.productId,_that.updated,_that.userId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String collectionId,  String collectionName,  int count,  String created,  String id, @JsonKey(name: 'product_id')  String productId,  String updated, @JsonKey(name: 'user_id')  String userId)?  $default,) {final _that = this;
switch (_that) {
case _ProductInBacket() when $default != null:
return $default(_that.collectionId,_that.collectionName,_that.count,_that.created,_that.id,_that.productId,_that.updated,_that.userId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductInBacket implements ProductInBacket {
   _ProductInBacket({required this.collectionId, required this.collectionName, required this.count, required this.created, required this.id, @JsonKey(name: 'product_id') required this.productId, required this.updated, @JsonKey(name: 'user_id') required this.userId});
  factory _ProductInBacket.fromJson(Map<String, dynamic> json) => _$ProductInBacketFromJson(json);

@override final  String collectionId;
@override final  String collectionName;
@override final  int count;
@override final  String created;
@override final  String id;
@override@JsonKey(name: 'product_id') final  String productId;
@override final  String updated;
@override@JsonKey(name: 'user_id') final  String userId;

/// Create a copy of ProductInBacket
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductInBacketCopyWith<_ProductInBacket> get copyWith => __$ProductInBacketCopyWithImpl<_ProductInBacket>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductInBacketToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductInBacket&&(identical(other.collectionId, collectionId) || other.collectionId == collectionId)&&(identical(other.collectionName, collectionName) || other.collectionName == collectionName)&&(identical(other.count, count) || other.count == count)&&(identical(other.created, created) || other.created == created)&&(identical(other.id, id) || other.id == id)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.updated, updated) || other.updated == updated)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,collectionId,collectionName,count,created,id,productId,updated,userId);

@override
String toString() {
  return 'ProductInBacket(collectionId: $collectionId, collectionName: $collectionName, count: $count, created: $created, id: $id, productId: $productId, updated: $updated, userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$ProductInBacketCopyWith<$Res> implements $ProductInBacketCopyWith<$Res> {
  factory _$ProductInBacketCopyWith(_ProductInBacket value, $Res Function(_ProductInBacket) _then) = __$ProductInBacketCopyWithImpl;
@override @useResult
$Res call({
 String collectionId, String collectionName, int count, String created, String id,@JsonKey(name: 'product_id') String productId, String updated,@JsonKey(name: 'user_id') String userId
});




}
/// @nodoc
class __$ProductInBacketCopyWithImpl<$Res>
    implements _$ProductInBacketCopyWith<$Res> {
  __$ProductInBacketCopyWithImpl(this._self, this._then);

  final _ProductInBacket _self;
  final $Res Function(_ProductInBacket) _then;

/// Create a copy of ProductInBacket
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? collectionId = null,Object? collectionName = null,Object? count = null,Object? created = null,Object? id = null,Object? productId = null,Object? updated = null,Object? userId = null,}) {
  return _then(_ProductInBacket(
collectionId: null == collectionId ? _self.collectionId : collectionId // ignore: cast_nullable_to_non_nullable
as String,collectionName: null == collectionName ? _self.collectionName : collectionName // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,updated: null == updated ? _self.updated : updated // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$BacketResponse {

 List<ProductInBacket> get items; int get page; int get perPage; int get totalItems; int get totalPages;
/// Create a copy of BacketResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BacketResponseCopyWith<BacketResponse> get copyWith => _$BacketResponseCopyWithImpl<BacketResponse>(this as BacketResponse, _$identity);

  /// Serializes this BacketResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BacketResponse&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.page, page) || other.page == page)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.totalItems, totalItems) || other.totalItems == totalItems)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),page,perPage,totalItems,totalPages);

@override
String toString() {
  return 'BacketResponse(items: $items, page: $page, perPage: $perPage, totalItems: $totalItems, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class $BacketResponseCopyWith<$Res>  {
  factory $BacketResponseCopyWith(BacketResponse value, $Res Function(BacketResponse) _then) = _$BacketResponseCopyWithImpl;
@useResult
$Res call({
 List<ProductInBacket> items, int page, int perPage, int totalItems, int totalPages
});




}
/// @nodoc
class _$BacketResponseCopyWithImpl<$Res>
    implements $BacketResponseCopyWith<$Res> {
  _$BacketResponseCopyWithImpl(this._self, this._then);

  final BacketResponse _self;
  final $Res Function(BacketResponse) _then;

/// Create a copy of BacketResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? page = null,Object? perPage = null,Object? totalItems = null,Object? totalPages = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<ProductInBacket>,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,totalItems: null == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [BacketResponse].
extension BacketResponsePatterns on BacketResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BacketResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BacketResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BacketResponse value)  $default,){
final _that = this;
switch (_that) {
case _BacketResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BacketResponse value)?  $default,){
final _that = this;
switch (_that) {
case _BacketResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ProductInBacket> items,  int page,  int perPage,  int totalItems,  int totalPages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BacketResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ProductInBacket> items,  int page,  int perPage,  int totalItems,  int totalPages)  $default,) {final _that = this;
switch (_that) {
case _BacketResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ProductInBacket> items,  int page,  int perPage,  int totalItems,  int totalPages)?  $default,) {final _that = this;
switch (_that) {
case _BacketResponse() when $default != null:
return $default(_that.items,_that.page,_that.perPage,_that.totalItems,_that.totalPages);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BacketResponse implements BacketResponse {
   _BacketResponse({required final  List<ProductInBacket> items, required this.page, required this.perPage, required this.totalItems, required this.totalPages}): _items = items;
  factory _BacketResponse.fromJson(Map<String, dynamic> json) => _$BacketResponseFromJson(json);

 final  List<ProductInBacket> _items;
@override List<ProductInBacket> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  int page;
@override final  int perPage;
@override final  int totalItems;
@override final  int totalPages;

/// Create a copy of BacketResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BacketResponseCopyWith<_BacketResponse> get copyWith => __$BacketResponseCopyWithImpl<_BacketResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BacketResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BacketResponse&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.page, page) || other.page == page)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.totalItems, totalItems) || other.totalItems == totalItems)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),page,perPage,totalItems,totalPages);

@override
String toString() {
  return 'BacketResponse(items: $items, page: $page, perPage: $perPage, totalItems: $totalItems, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class _$BacketResponseCopyWith<$Res> implements $BacketResponseCopyWith<$Res> {
  factory _$BacketResponseCopyWith(_BacketResponse value, $Res Function(_BacketResponse) _then) = __$BacketResponseCopyWithImpl;
@override @useResult
$Res call({
 List<ProductInBacket> items, int page, int perPage, int totalItems, int totalPages
});




}
/// @nodoc
class __$BacketResponseCopyWithImpl<$Res>
    implements _$BacketResponseCopyWith<$Res> {
  __$BacketResponseCopyWithImpl(this._self, this._then);

  final _BacketResponse _self;
  final $Res Function(_BacketResponse) _then;

/// Create a copy of BacketResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? page = null,Object? perPage = null,Object? totalItems = null,Object? totalPages = null,}) {
  return _then(_BacketResponse(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ProductInBacket>,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,totalItems: null == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$AddBacketResponse {

@JsonKey(name: 'user_id') String get userId;@JsonKey(name: 'product_id') String get productId; int get count;
/// Create a copy of AddBacketResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddBacketResponseCopyWith<AddBacketResponse> get copyWith => _$AddBacketResponseCopyWithImpl<AddBacketResponse>(this as AddBacketResponse, _$identity);

  /// Serializes this AddBacketResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddBacketResponse&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.count, count) || other.count == count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,productId,count);

@override
String toString() {
  return 'AddBacketResponse(userId: $userId, productId: $productId, count: $count)';
}


}

/// @nodoc
abstract mixin class $AddBacketResponseCopyWith<$Res>  {
  factory $AddBacketResponseCopyWith(AddBacketResponse value, $Res Function(AddBacketResponse) _then) = _$AddBacketResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'product_id') String productId, int count
});




}
/// @nodoc
class _$AddBacketResponseCopyWithImpl<$Res>
    implements $AddBacketResponseCopyWith<$Res> {
  _$AddBacketResponseCopyWithImpl(this._self, this._then);

  final AddBacketResponse _self;
  final $Res Function(AddBacketResponse) _then;

/// Create a copy of AddBacketResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? productId = null,Object? count = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [AddBacketResponse].
extension AddBacketResponsePatterns on AddBacketResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddBacketResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddBacketResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddBacketResponse value)  $default,){
final _that = this;
switch (_that) {
case _AddBacketResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddBacketResponse value)?  $default,){
final _that = this;
switch (_that) {
case _AddBacketResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'product_id')  String productId,  int count)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddBacketResponse() when $default != null:
return $default(_that.userId,_that.productId,_that.count);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'product_id')  String productId,  int count)  $default,) {final _that = this;
switch (_that) {
case _AddBacketResponse():
return $default(_that.userId,_that.productId,_that.count);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'product_id')  String productId,  int count)?  $default,) {final _that = this;
switch (_that) {
case _AddBacketResponse() when $default != null:
return $default(_that.userId,_that.productId,_that.count);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AddBacketResponse implements AddBacketResponse {
   _AddBacketResponse({@JsonKey(name: 'user_id') required this.userId, @JsonKey(name: 'product_id') required this.productId, required this.count});
  factory _AddBacketResponse.fromJson(Map<String, dynamic> json) => _$AddBacketResponseFromJson(json);

@override@JsonKey(name: 'user_id') final  String userId;
@override@JsonKey(name: 'product_id') final  String productId;
@override final  int count;

/// Create a copy of AddBacketResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddBacketResponseCopyWith<_AddBacketResponse> get copyWith => __$AddBacketResponseCopyWithImpl<_AddBacketResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddBacketResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddBacketResponse&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.count, count) || other.count == count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,productId,count);

@override
String toString() {
  return 'AddBacketResponse(userId: $userId, productId: $productId, count: $count)';
}


}

/// @nodoc
abstract mixin class _$AddBacketResponseCopyWith<$Res> implements $AddBacketResponseCopyWith<$Res> {
  factory _$AddBacketResponseCopyWith(_AddBacketResponse value, $Res Function(_AddBacketResponse) _then) = __$AddBacketResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'product_id') String productId, int count
});




}
/// @nodoc
class __$AddBacketResponseCopyWithImpl<$Res>
    implements _$AddBacketResponseCopyWith<$Res> {
  __$AddBacketResponseCopyWithImpl(this._self, this._then);

  final _AddBacketResponse _self;
  final $Res Function(_AddBacketResponse) _then;

/// Create a copy of AddBacketResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? productId = null,Object? count = null,}) {
  return _then(_AddBacketResponse(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
