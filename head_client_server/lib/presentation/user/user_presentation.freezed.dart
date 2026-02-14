// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_presentation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RecordResponse {

 String get collectionId; String get collectionName; String get created; String get datebirthday; String get email; bool get emailVisibility; String get firstname; String get gender; String get id; String get lastname; String get secondname; String get updated; bool get verified;
/// Create a copy of RecordResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecordResponseCopyWith<RecordResponse> get copyWith => _$RecordResponseCopyWithImpl<RecordResponse>(this as RecordResponse, _$identity);

  /// Serializes this RecordResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecordResponse&&(identical(other.collectionId, collectionId) || other.collectionId == collectionId)&&(identical(other.collectionName, collectionName) || other.collectionName == collectionName)&&(identical(other.created, created) || other.created == created)&&(identical(other.datebirthday, datebirthday) || other.datebirthday == datebirthday)&&(identical(other.email, email) || other.email == email)&&(identical(other.emailVisibility, emailVisibility) || other.emailVisibility == emailVisibility)&&(identical(other.firstname, firstname) || other.firstname == firstname)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.id, id) || other.id == id)&&(identical(other.lastname, lastname) || other.lastname == lastname)&&(identical(other.secondname, secondname) || other.secondname == secondname)&&(identical(other.updated, updated) || other.updated == updated)&&(identical(other.verified, verified) || other.verified == verified));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,collectionId,collectionName,created,datebirthday,email,emailVisibility,firstname,gender,id,lastname,secondname,updated,verified);

@override
String toString() {
  return 'RecordResponse(collectionId: $collectionId, collectionName: $collectionName, created: $created, datebirthday: $datebirthday, email: $email, emailVisibility: $emailVisibility, firstname: $firstname, gender: $gender, id: $id, lastname: $lastname, secondname: $secondname, updated: $updated, verified: $verified)';
}


}

/// @nodoc
abstract mixin class $RecordResponseCopyWith<$Res>  {
  factory $RecordResponseCopyWith(RecordResponse value, $Res Function(RecordResponse) _then) = _$RecordResponseCopyWithImpl;
@useResult
$Res call({
 String collectionId, String collectionName, String created, String datebirthday, String email, bool emailVisibility, String firstname, String gender, String id, String lastname, String secondname, String updated, bool verified
});




}
/// @nodoc
class _$RecordResponseCopyWithImpl<$Res>
    implements $RecordResponseCopyWith<$Res> {
  _$RecordResponseCopyWithImpl(this._self, this._then);

  final RecordResponse _self;
  final $Res Function(RecordResponse) _then;

/// Create a copy of RecordResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? collectionId = null,Object? collectionName = null,Object? created = null,Object? datebirthday = null,Object? email = null,Object? emailVisibility = null,Object? firstname = null,Object? gender = null,Object? id = null,Object? lastname = null,Object? secondname = null,Object? updated = null,Object? verified = null,}) {
  return _then(_self.copyWith(
collectionId: null == collectionId ? _self.collectionId : collectionId // ignore: cast_nullable_to_non_nullable
as String,collectionName: null == collectionName ? _self.collectionName : collectionName // ignore: cast_nullable_to_non_nullable
as String,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as String,datebirthday: null == datebirthday ? _self.datebirthday : datebirthday // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,emailVisibility: null == emailVisibility ? _self.emailVisibility : emailVisibility // ignore: cast_nullable_to_non_nullable
as bool,firstname: null == firstname ? _self.firstname : firstname // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,lastname: null == lastname ? _self.lastname : lastname // ignore: cast_nullable_to_non_nullable
as String,secondname: null == secondname ? _self.secondname : secondname // ignore: cast_nullable_to_non_nullable
as String,updated: null == updated ? _self.updated : updated // ignore: cast_nullable_to_non_nullable
as String,verified: null == verified ? _self.verified : verified // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [RecordResponse].
extension RecordResponsePatterns on RecordResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecordResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecordResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecordResponse value)  $default,){
final _that = this;
switch (_that) {
case _RecordResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecordResponse value)?  $default,){
final _that = this;
switch (_that) {
case _RecordResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String collectionId,  String collectionName,  String created,  String datebirthday,  String email,  bool emailVisibility,  String firstname,  String gender,  String id,  String lastname,  String secondname,  String updated,  bool verified)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecordResponse() when $default != null:
return $default(_that.collectionId,_that.collectionName,_that.created,_that.datebirthday,_that.email,_that.emailVisibility,_that.firstname,_that.gender,_that.id,_that.lastname,_that.secondname,_that.updated,_that.verified);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String collectionId,  String collectionName,  String created,  String datebirthday,  String email,  bool emailVisibility,  String firstname,  String gender,  String id,  String lastname,  String secondname,  String updated,  bool verified)  $default,) {final _that = this;
switch (_that) {
case _RecordResponse():
return $default(_that.collectionId,_that.collectionName,_that.created,_that.datebirthday,_that.email,_that.emailVisibility,_that.firstname,_that.gender,_that.id,_that.lastname,_that.secondname,_that.updated,_that.verified);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String collectionId,  String collectionName,  String created,  String datebirthday,  String email,  bool emailVisibility,  String firstname,  String gender,  String id,  String lastname,  String secondname,  String updated,  bool verified)?  $default,) {final _that = this;
switch (_that) {
case _RecordResponse() when $default != null:
return $default(_that.collectionId,_that.collectionName,_that.created,_that.datebirthday,_that.email,_that.emailVisibility,_that.firstname,_that.gender,_that.id,_that.lastname,_that.secondname,_that.updated,_that.verified);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecordResponse implements RecordResponse {
   _RecordResponse({required this.collectionId, required this.collectionName, required this.created, required this.datebirthday, required this.email, required this.emailVisibility, required this.firstname, required this.gender, required this.id, required this.lastname, required this.secondname, required this.updated, required this.verified});
  factory _RecordResponse.fromJson(Map<String, dynamic> json) => _$RecordResponseFromJson(json);

@override final  String collectionId;
@override final  String collectionName;
@override final  String created;
@override final  String datebirthday;
@override final  String email;
@override final  bool emailVisibility;
@override final  String firstname;
@override final  String gender;
@override final  String id;
@override final  String lastname;
@override final  String secondname;
@override final  String updated;
@override final  bool verified;

/// Create a copy of RecordResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecordResponseCopyWith<_RecordResponse> get copyWith => __$RecordResponseCopyWithImpl<_RecordResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecordResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecordResponse&&(identical(other.collectionId, collectionId) || other.collectionId == collectionId)&&(identical(other.collectionName, collectionName) || other.collectionName == collectionName)&&(identical(other.created, created) || other.created == created)&&(identical(other.datebirthday, datebirthday) || other.datebirthday == datebirthday)&&(identical(other.email, email) || other.email == email)&&(identical(other.emailVisibility, emailVisibility) || other.emailVisibility == emailVisibility)&&(identical(other.firstname, firstname) || other.firstname == firstname)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.id, id) || other.id == id)&&(identical(other.lastname, lastname) || other.lastname == lastname)&&(identical(other.secondname, secondname) || other.secondname == secondname)&&(identical(other.updated, updated) || other.updated == updated)&&(identical(other.verified, verified) || other.verified == verified));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,collectionId,collectionName,created,datebirthday,email,emailVisibility,firstname,gender,id,lastname,secondname,updated,verified);

@override
String toString() {
  return 'RecordResponse(collectionId: $collectionId, collectionName: $collectionName, created: $created, datebirthday: $datebirthday, email: $email, emailVisibility: $emailVisibility, firstname: $firstname, gender: $gender, id: $id, lastname: $lastname, secondname: $secondname, updated: $updated, verified: $verified)';
}


}

/// @nodoc
abstract mixin class _$RecordResponseCopyWith<$Res> implements $RecordResponseCopyWith<$Res> {
  factory _$RecordResponseCopyWith(_RecordResponse value, $Res Function(_RecordResponse) _then) = __$RecordResponseCopyWithImpl;
@override @useResult
$Res call({
 String collectionId, String collectionName, String created, String datebirthday, String email, bool emailVisibility, String firstname, String gender, String id, String lastname, String secondname, String updated, bool verified
});




}
/// @nodoc
class __$RecordResponseCopyWithImpl<$Res>
    implements _$RecordResponseCopyWith<$Res> {
  __$RecordResponseCopyWithImpl(this._self, this._then);

  final _RecordResponse _self;
  final $Res Function(_RecordResponse) _then;

/// Create a copy of RecordResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? collectionId = null,Object? collectionName = null,Object? created = null,Object? datebirthday = null,Object? email = null,Object? emailVisibility = null,Object? firstname = null,Object? gender = null,Object? id = null,Object? lastname = null,Object? secondname = null,Object? updated = null,Object? verified = null,}) {
  return _then(_RecordResponse(
collectionId: null == collectionId ? _self.collectionId : collectionId // ignore: cast_nullable_to_non_nullable
as String,collectionName: null == collectionName ? _self.collectionName : collectionName // ignore: cast_nullable_to_non_nullable
as String,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as String,datebirthday: null == datebirthday ? _self.datebirthday : datebirthday // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,emailVisibility: null == emailVisibility ? _self.emailVisibility : emailVisibility // ignore: cast_nullable_to_non_nullable
as bool,firstname: null == firstname ? _self.firstname : firstname // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,lastname: null == lastname ? _self.lastname : lastname // ignore: cast_nullable_to_non_nullable
as String,secondname: null == secondname ? _self.secondname : secondname // ignore: cast_nullable_to_non_nullable
as String,updated: null == updated ? _self.updated : updated // ignore: cast_nullable_to_non_nullable
as String,verified: null == verified ? _self.verified : verified // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$AuthRequest {

 String get identity; String get password;
/// Create a copy of AuthRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthRequestCopyWith<AuthRequest> get copyWith => _$AuthRequestCopyWithImpl<AuthRequest>(this as AuthRequest, _$identity);

  /// Serializes this AuthRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthRequest&&(identical(other.identity, identity) || other.identity == identity)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,identity,password);

@override
String toString() {
  return 'AuthRequest(identity: $identity, password: $password)';
}


}

/// @nodoc
abstract mixin class $AuthRequestCopyWith<$Res>  {
  factory $AuthRequestCopyWith(AuthRequest value, $Res Function(AuthRequest) _then) = _$AuthRequestCopyWithImpl;
@useResult
$Res call({
 String identity, String password
});




}
/// @nodoc
class _$AuthRequestCopyWithImpl<$Res>
    implements $AuthRequestCopyWith<$Res> {
  _$AuthRequestCopyWithImpl(this._self, this._then);

  final AuthRequest _self;
  final $Res Function(AuthRequest) _then;

/// Create a copy of AuthRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? identity = null,Object? password = null,}) {
  return _then(_self.copyWith(
identity: null == identity ? _self.identity : identity // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AuthRequest].
extension AuthRequestPatterns on AuthRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthRequest value)  $default,){
final _that = this;
switch (_that) {
case _AuthRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthRequest value)?  $default,){
final _that = this;
switch (_that) {
case _AuthRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String identity,  String password)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthRequest() when $default != null:
return $default(_that.identity,_that.password);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String identity,  String password)  $default,) {final _that = this;
switch (_that) {
case _AuthRequest():
return $default(_that.identity,_that.password);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String identity,  String password)?  $default,) {final _that = this;
switch (_that) {
case _AuthRequest() when $default != null:
return $default(_that.identity,_that.password);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuthRequest implements AuthRequest {
   _AuthRequest({required this.identity, required this.password});
  factory _AuthRequest.fromJson(Map<String, dynamic> json) => _$AuthRequestFromJson(json);

@override final  String identity;
@override final  String password;

/// Create a copy of AuthRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthRequestCopyWith<_AuthRequest> get copyWith => __$AuthRequestCopyWithImpl<_AuthRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthRequest&&(identical(other.identity, identity) || other.identity == identity)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,identity,password);

@override
String toString() {
  return 'AuthRequest(identity: $identity, password: $password)';
}


}

/// @nodoc
abstract mixin class _$AuthRequestCopyWith<$Res> implements $AuthRequestCopyWith<$Res> {
  factory _$AuthRequestCopyWith(_AuthRequest value, $Res Function(_AuthRequest) _then) = __$AuthRequestCopyWithImpl;
@override @useResult
$Res call({
 String identity, String password
});




}
/// @nodoc
class __$AuthRequestCopyWithImpl<$Res>
    implements _$AuthRequestCopyWith<$Res> {
  __$AuthRequestCopyWithImpl(this._self, this._then);

  final _AuthRequest _self;
  final $Res Function(_AuthRequest) _then;

/// Create a copy of AuthRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? identity = null,Object? password = null,}) {
  return _then(_AuthRequest(
identity: null == identity ? _self.identity : identity // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$AuthResponse {

 RecordResponse get record; String get token;
/// Create a copy of AuthResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthResponseCopyWith<AuthResponse> get copyWith => _$AuthResponseCopyWithImpl<AuthResponse>(this as AuthResponse, _$identity);

  /// Serializes this AuthResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthResponse&&(identical(other.record, record) || other.record == record)&&(identical(other.token, token) || other.token == token));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,record,token);

@override
String toString() {
  return 'AuthResponse(record: $record, token: $token)';
}


}

/// @nodoc
abstract mixin class $AuthResponseCopyWith<$Res>  {
  factory $AuthResponseCopyWith(AuthResponse value, $Res Function(AuthResponse) _then) = _$AuthResponseCopyWithImpl;
@useResult
$Res call({
 RecordResponse record, String token
});


$RecordResponseCopyWith<$Res> get record;

}
/// @nodoc
class _$AuthResponseCopyWithImpl<$Res>
    implements $AuthResponseCopyWith<$Res> {
  _$AuthResponseCopyWithImpl(this._self, this._then);

  final AuthResponse _self;
  final $Res Function(AuthResponse) _then;

/// Create a copy of AuthResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? record = null,Object? token = null,}) {
  return _then(_self.copyWith(
record: null == record ? _self.record : record // ignore: cast_nullable_to_non_nullable
as RecordResponse,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of AuthResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RecordResponseCopyWith<$Res> get record {
  
  return $RecordResponseCopyWith<$Res>(_self.record, (value) {
    return _then(_self.copyWith(record: value));
  });
}
}


/// Adds pattern-matching-related methods to [AuthResponse].
extension AuthResponsePatterns on AuthResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthResponse value)  $default,){
final _that = this;
switch (_that) {
case _AuthResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthResponse value)?  $default,){
final _that = this;
switch (_that) {
case _AuthResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( RecordResponse record,  String token)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthResponse() when $default != null:
return $default(_that.record,_that.token);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( RecordResponse record,  String token)  $default,) {final _that = this;
switch (_that) {
case _AuthResponse():
return $default(_that.record,_that.token);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( RecordResponse record,  String token)?  $default,) {final _that = this;
switch (_that) {
case _AuthResponse() when $default != null:
return $default(_that.record,_that.token);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuthResponse implements AuthResponse {
   _AuthResponse({required this.record, required this.token});
  factory _AuthResponse.fromJson(Map<String, dynamic> json) => _$AuthResponseFromJson(json);

@override final  RecordResponse record;
@override final  String token;

/// Create a copy of AuthResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthResponseCopyWith<_AuthResponse> get copyWith => __$AuthResponseCopyWithImpl<_AuthResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthResponse&&(identical(other.record, record) || other.record == record)&&(identical(other.token, token) || other.token == token));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,record,token);

@override
String toString() {
  return 'AuthResponse(record: $record, token: $token)';
}


}

/// @nodoc
abstract mixin class _$AuthResponseCopyWith<$Res> implements $AuthResponseCopyWith<$Res> {
  factory _$AuthResponseCopyWith(_AuthResponse value, $Res Function(_AuthResponse) _then) = __$AuthResponseCopyWithImpl;
@override @useResult
$Res call({
 RecordResponse record, String token
});


@override $RecordResponseCopyWith<$Res> get record;

}
/// @nodoc
class __$AuthResponseCopyWithImpl<$Res>
    implements _$AuthResponseCopyWith<$Res> {
  __$AuthResponseCopyWithImpl(this._self, this._then);

  final _AuthResponse _self;
  final $Res Function(_AuthResponse) _then;

/// Create a copy of AuthResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? record = null,Object? token = null,}) {
  return _then(_AuthResponse(
record: null == record ? _self.record : record // ignore: cast_nullable_to_non_nullable
as RecordResponse,token: null == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of AuthResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RecordResponseCopyWith<$Res> get record {
  
  return $RecordResponseCopyWith<$Res>(_self.record, (value) {
    return _then(_self.copyWith(record: value));
  });
}
}

// dart format on
