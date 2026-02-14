import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_presentation.g.dart';
part 'user_presentation.freezed.dart';

@freezed
abstract class RecordResponse with _$RecordResponse {
  factory RecordResponse({
    required String collectionId,
    required String collectionName,
    required String created,
    required String datebirthday,
    required String email,
    required bool emailVisibility,
    required String firstname,
    required String gender,
    required String id,
    required String lastname,
    required String secondname,
    required String updated,
    required bool verified,
  }) = _RecordResponse;

  factory RecordResponse.fromJson(Map<String, dynamic> json) =>
      _$RecordResponseFromJson(json);
}


@freezed
abstract class AuthRequest with _$AuthRequest{
  factory AuthRequest({
    required String identity,
    required String password
  }) = _AuthRequest;
  factory AuthRequest.fromJson(Map<String, dynamic> json) => _$AuthRequestFromJson(json);
}

@freezed
abstract class AuthResponse with _$AuthResponse {
  factory AuthResponse({
    required RecordResponse record,
    required String token,
  }) = _AuthResponse;

  factory AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseFromJson(json);
}

