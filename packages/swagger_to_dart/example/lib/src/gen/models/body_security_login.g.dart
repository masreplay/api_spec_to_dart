// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'body_security_login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BodySecurityLogin _$BodySecurityLoginFromJson(Map<String, dynamic> json) =>
    _BodySecurityLogin(
      grantType: json['grantType'] as String?,
      username: json['username'] as String,
      password: json['password'] as String,
      scope: json['scope'] as String,
      clientId: json['clientId'] as String?,
      clientSecret: json['clientSecret'] as String?,
    );

Map<String, dynamic> _$BodySecurityLoginToJson(_BodySecurityLogin instance) =>
    <String, dynamic>{
      'grantType': instance.grantType,
      'username': instance.username,
      'password': instance.password,
      'scope': instance.scope,
      'clientId': instance.clientId,
      'clientSecret': instance.clientSecret,
    };
