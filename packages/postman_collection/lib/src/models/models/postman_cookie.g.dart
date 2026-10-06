// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'postman_cookie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostmanCookie _$PostmanCookieFromJson(Map<String, dynamic> json) =>
    _PostmanCookie(
      domain: json['domain'] as String,
      expires: json['expires'] as String?,
      maxAge: json['maxAge'] as String?,
      hostOnly: json['hostOnly'] as bool?,
      httpOnly: json['httpOnly'] as bool?,
      name: json['name'] as String?,
      path: json['path'] as String,
      secure: json['secure'] as bool?,
      session: json['session'] as bool?,
      value: json['value'] as String?,
      extensions: json['extensions'] as List<dynamic>?,
    );

Map<String, dynamic> _$PostmanCookieToJson(_PostmanCookie instance) =>
    <String, dynamic>{
      'domain': instance.domain,
      'expires': ?instance.expires,
      'maxAge': ?instance.maxAge,
      'hostOnly': ?instance.hostOnly,
      'httpOnly': ?instance.httpOnly,
      'name': ?instance.name,
      'path': instance.path,
      'secure': ?instance.secure,
      'session': ?instance.session,
      'value': ?instance.value,
      'extensions': ?instance.extensions,
    };
