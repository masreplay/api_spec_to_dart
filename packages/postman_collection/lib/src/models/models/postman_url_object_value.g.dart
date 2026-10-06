// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'postman_url_object_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostmanUrlObjectValue _$PostmanUrlObjectValueFromJson(
  Map<String, dynamic> json,
) => _PostmanUrlObjectValue(
  raw: json['raw'] as String?,
  protocol: json['protocol'] as String?,
  host: json['host'] == null ? null : PostmanHost.fromJson(json['host']),
  path: json['path'] == null
      ? null
      : PostmanUrlObjectValuePath.fromJson(json['path']),
  port: json['port'] as String?,
  query: (json['query'] as List<dynamic>?)
      ?.map((e) => PostmanQueryParam.fromJson(e as Map<String, dynamic>))
      .toList(),
  hash: json['hash'] as String?,
  variable: (json['variable'] as List<dynamic>?)
      ?.map((e) => PostmanVariable.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PostmanUrlObjectValueToJson(
  _PostmanUrlObjectValue instance,
) => <String, dynamic>{
  'raw': ?instance.raw,
  'protocol': ?instance.protocol,
  'host': ?instance.host?.toJson(),
  'path': ?instance.path?.toJson(),
  'port': ?instance.port,
  'query': ?instance.query?.map((e) => e.toJson()).toList(),
  'hash': ?instance.hash,
  'variable': ?instance.variable?.map((e) => e.toJson()).toList(),
};
