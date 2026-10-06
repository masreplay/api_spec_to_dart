// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'postman_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostmanInfo _$PostmanInfoFromJson(Map<String, dynamic> json) => _PostmanInfo(
  name: json['name'] as String,
  postmanId: json['_postman_id'] as String?,
  description: json['description'] == null
      ? null
      : PostmanDescription.fromJson(json['description']),
  version: json['version'] == null
      ? null
      : PostmanVersion.fromJson(json['version']),
  schema: json['schema'] as String,
);

Map<String, dynamic> _$PostmanInfoToJson(_PostmanInfo instance) =>
    <String, dynamic>{
      'name': instance.name,
      '_postman_id': ?instance.postmanId,
      'description': ?instance.description?.toJson(),
      'version': ?instance.version?.toJson(),
      'schema': instance.schema,
    };
