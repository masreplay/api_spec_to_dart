// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'body_security_login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BodySecurityLogin _$BodySecurityLoginFromJson(Map<String, dynamic> json) =>
    _BodySecurityLogin(
      grantType: json['grant_type'] as String?,
      username: json['username'] as String,
      password: json['password'] as String,
      scope: json['scope'] as String? ?? '',
      clientId: json['client_id'] as String?,
      clientSecret: json['client_secret'] as String?,
    );

Map<String, dynamic> _$BodySecurityLoginToJson(_BodySecurityLogin instance) =>
    <String, dynamic>{
      'grant_type': instance.grantType,
      'username': instance.username,
      'password': instance.password,
      'scope': instance.scope,
      'client_id': instance.clientId,
      'client_secret': instance.clientSecret,
    };
