// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'postman_request_object_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostmanRequestObjectValue _$PostmanRequestObjectValueFromJson(
  Map<String, dynamic> json,
) => _PostmanRequestObjectValue(
  url: json['url'] == null ? null : PostmanUrl.fromJson(json['url']),
  auth: json['auth'] == null
      ? null
      : PostmanAuth.fromJson(json['auth'] as Map<String, dynamic>),
  proxy: json['proxy'] == null
      ? null
      : PostmanProxyConfig.fromJson(json['proxy'] as Map<String, dynamic>),
  certificate: json['certificate'] == null
      ? null
      : PostmanCertificate.fromJson(
          json['certificate'] as Map<String, dynamic>,
        ),
  method: json['method'] as String?,
  description: json['description'] == null
      ? null
      : PostmanDescription.fromJson(json['description']),
  header: json['header'] == null
      ? null
      : PostmanRequestObjectValueHeader.fromJson(json['header']),
  body: json['body'] == null
      ? null
      : PostmanRequestObjectValueBody.fromJson(
          json['body'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$PostmanRequestObjectValueToJson(
  _PostmanRequestObjectValue instance,
) => <String, dynamic>{
  'url': ?instance.url?.toJson(),
  'auth': ?instance.auth?.toJson(),
  'proxy': ?instance.proxy?.toJson(),
  'certificate': ?instance.certificate?.toJson(),
  'method': ?instance.method,
  'description': ?instance.description?.toJson(),
  'header': ?instance.header?.toJson(),
  'body': ?instance.body?.toJson(),
};
