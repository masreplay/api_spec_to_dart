// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_auth_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentAuthResponseImpl _$$StudentAuthResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$StudentAuthResponseImpl(
      accessToken: json['access_token'] as String,
      expiresIn: (json['expires_in'] as num).toInt(),
      refreshToken: json['refresh_token'] as String,
      refreshExpiresIn: (json['refresh_expires_in'] as num).toInt(),
      userId: (json['user_id'] as num).toInt(),
      userRole: json['user_role'] == null
          ? 0
          : UserRole.fromJson(json['user_role'] as Map<String, dynamic>),
      status: AuthenticationStatusResponse.fromJson(
          json['status'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StudentAuthResponseImplToJson(
        _$StudentAuthResponseImpl instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'expires_in': instance.expiresIn,
      'refresh_token': instance.refreshToken,
      'refresh_expires_in': instance.refreshExpiresIn,
      'user_id': instance.userId,
      'user_role': instance.userRole,
      'status': instance.status,
    };
