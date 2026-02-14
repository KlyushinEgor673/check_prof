// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_presentation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RecordResponse _$RecordResponseFromJson(Map<String, dynamic> json) =>
    _RecordResponse(
      collectionId: json['collectionId'] as String,
      collectionName: json['collectionName'] as String,
      created: json['created'] as String,
      datebirthday: json['datebirthday'] as String,
      email: json['email'] as String,
      emailVisibility: json['emailVisibility'] as bool,
      firstname: json['firstname'] as String,
      gender: json['gender'] as String,
      id: json['id'] as String,
      lastname: json['lastname'] as String,
      secondname: json['secondname'] as String,
      updated: json['updated'] as String,
      verified: json['verified'] as bool,
    );

Map<String, dynamic> _$RecordResponseToJson(_RecordResponse instance) =>
    <String, dynamic>{
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'created': instance.created,
      'datebirthday': instance.datebirthday,
      'email': instance.email,
      'emailVisibility': instance.emailVisibility,
      'firstname': instance.firstname,
      'gender': instance.gender,
      'id': instance.id,
      'lastname': instance.lastname,
      'secondname': instance.secondname,
      'updated': instance.updated,
      'verified': instance.verified,
    };

_AuthRequest _$AuthRequestFromJson(Map<String, dynamic> json) => _AuthRequest(
  identity: json['identity'] as String,
  password: json['password'] as String,
);

Map<String, dynamic> _$AuthRequestToJson(_AuthRequest instance) =>
    <String, dynamic>{
      'identity': instance.identity,
      'password': instance.password,
    };

_AuthResponse _$AuthResponseFromJson(Map<String, dynamic> json) =>
    _AuthResponse(
      record: RecordResponse.fromJson(json['record'] as Map<String, dynamic>),
      token: json['token'] as String,
    );

Map<String, dynamic> _$AuthResponseToJson(_AuthResponse instance) =>
    <String, dynamic>{'record': instance.record, 'token': instance.token};
