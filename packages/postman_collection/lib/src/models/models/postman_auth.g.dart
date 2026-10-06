// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'postman_auth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostmanAuth _$PostmanAuthFromJson(Map<String, dynamic> json) => _PostmanAuth(
  type: PostmanAuthType.fromJson(json['type'] as String),
  noauth: json['noauth'],
  apikey: (json['apikey'] as List<dynamic>?)
      ?.map((e) => PostmanAuthAttribute.fromJson(e as Map<String, dynamic>))
      .toList(),
  awsv4: (json['awsv4'] as List<dynamic>?)
      ?.map((e) => PostmanAuthAttribute.fromJson(e as Map<String, dynamic>))
      .toList(),
  basic: (json['basic'] as List<dynamic>?)
      ?.map((e) => PostmanAuthAttribute.fromJson(e as Map<String, dynamic>))
      .toList(),
  bearer: (json['bearer'] as List<dynamic>?)
      ?.map((e) => PostmanAuthAttribute.fromJson(e as Map<String, dynamic>))
      .toList(),
  digest: (json['digest'] as List<dynamic>?)
      ?.map((e) => PostmanAuthAttribute.fromJson(e as Map<String, dynamic>))
      .toList(),
  edgegrid: (json['edgegrid'] as List<dynamic>?)
      ?.map((e) => PostmanAuthAttribute.fromJson(e as Map<String, dynamic>))
      .toList(),
  hawk: (json['hawk'] as List<dynamic>?)
      ?.map((e) => PostmanAuthAttribute.fromJson(e as Map<String, dynamic>))
      .toList(),
  ntlm: (json['ntlm'] as List<dynamic>?)
      ?.map((e) => PostmanAuthAttribute.fromJson(e as Map<String, dynamic>))
      .toList(),
  oauth1: (json['oauth1'] as List<dynamic>?)
      ?.map((e) => PostmanAuthAttribute.fromJson(e as Map<String, dynamic>))
      .toList(),
  oauth2: (json['oauth2'] as List<dynamic>?)
      ?.map((e) => PostmanAuthAttribute.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PostmanAuthToJson(_PostmanAuth instance) =>
    <String, dynamic>{
      'type': instance.type.toJson(),
      'noauth': ?instance.noauth,
      'apikey': ?instance.apikey?.map((e) => e.toJson()).toList(),
      'awsv4': ?instance.awsv4?.map((e) => e.toJson()).toList(),
      'basic': ?instance.basic?.map((e) => e.toJson()).toList(),
      'bearer': ?instance.bearer?.map((e) => e.toJson()).toList(),
      'digest': ?instance.digest?.map((e) => e.toJson()).toList(),
      'edgegrid': ?instance.edgegrid?.map((e) => e.toJson()).toList(),
      'hawk': ?instance.hawk?.map((e) => e.toJson()).toList(),
      'ntlm': ?instance.ntlm?.map((e) => e.toJson()).toList(),
      'oauth1': ?instance.oauth1?.map((e) => e.toJson()).toList(),
      'oauth2': ?instance.oauth2?.map((e) => e.toJson()).toList(),
    };
