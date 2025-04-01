// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'body_login_login_access_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BodyLoginLoginAccessToken _$BodyLoginLoginAccessTokenFromJson(
  Map<String, dynamic> json,
) => _BodyLoginLoginAccessToken(
  grantType: json['grant_type'] as String?,
  username: json['username'] as String,
  password: json['password'] as String,
  scope: json['scope'] as String? ?? '',
  clientId: json['client_id'] as String?,
  clientSecret: json['client_secret'] as String?,
);

Map<String, dynamic> _$BodyLoginLoginAccessTokenToJson(
  _BodyLoginLoginAccessToken instance,
) => <String, dynamic>{
  if (instance.grantType case final value?) 'grant_type': value,
  'username': instance.username,
  'password': instance.password,
  'scope': instance.scope,
  if (instance.clientId case final value?) 'client_id': value,
  if (instance.clientSecret case final value?) 'client_secret': value,
};
