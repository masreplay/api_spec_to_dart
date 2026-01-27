// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credentials_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CredentialsDto _$CredentialsDtoFromJson(Map<String, dynamic> json) =>
    _CredentialsDto(
      sessionId: json['session_id'] as String,
      accessToken: json['access_token'] as String,
      refreshToken: json['refresh_token'] as String,
      expiresAt: DateTime.parse(json['expires_at'] as String),
    );

Map<String, dynamic> _$CredentialsDtoToJson(_CredentialsDto instance) =>
    <String, dynamic>{
      'session_id': instance.sessionId,
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
      'expires_at': instance.expiresAt.toIso8601String(),
    };
