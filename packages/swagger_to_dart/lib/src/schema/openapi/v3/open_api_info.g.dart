// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_api_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OpenApiInfo _$OpenApiInfoFromJson(Map<String, dynamic> json) => _OpenApiInfo(
  title: json['title'] as String,
  description: json['description'] as String?,
  version: json['version'] as String?,
);

Map<String, dynamic> _$OpenApiInfoToJson(_OpenApiInfo instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': ?instance.description,
      'version': ?instance.version,
    };
