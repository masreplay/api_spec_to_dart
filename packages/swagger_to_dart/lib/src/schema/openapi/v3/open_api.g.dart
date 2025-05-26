// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OpenApi _$OpenApiFromJson(Map<String, dynamic> json) => _OpenApi(
      openapi: json['openapi'] as String?,
      info: json['info'] == null
          ? null
          : OpenApiInfo.fromJson(json['info'] as Map<String, dynamic>),
      servers: (json['servers'] as List<dynamic>?)
          ?.map((e) => OpenApiServer.fromJson(e as Map<String, dynamic>))
          .toList(),
      paths: (json['paths'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k,
            (e as Map<String, dynamic>).map(
              (k, e) => MapEntry($enumDecode(_$OpenApiPathMethodEnumEnumMap, k),
                  OpenApiPathMethod.fromJson(e as Map<String, dynamic>)),
            )),
      ),
      components: json['components'] == null
          ? null
          : OpenApiComponents.fromJson(
              json['components'] as Map<String, dynamic>),
      tags: (json['tags'] as List<dynamic>?)
          ?.map((e) => OpenApiTag.fromJson(e as Map<String, dynamic>))
          .toList(),
      extraJson: json['extra_json'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$OpenApiToJson(_OpenApi instance) => <String, dynamic>{
      if (instance.openapi case final value?) 'openapi': value,
      if (instance.info?.toJson() case final value?) 'info': value,
      if (instance.servers?.map((e) => e.toJson()).toList() case final value?)
        'servers': value,
      if (instance.paths?.map((k, e) => MapEntry(
              k,
              e.map((k, e) =>
                  MapEntry(_$OpenApiPathMethodEnumEnumMap[k]!, e.toJson()))))
          case final value?)
        'paths': value,
      if (instance.components?.toJson() case final value?) 'components': value,
      if (instance.tags?.map((e) => e.toJson()).toList() case final value?)
        'tags': value,
      if (instance.extraJson case final value?) 'extra_json': value,
    };

const _$OpenApiPathMethodEnumEnumMap = {
  OpenApiPathMethodEnum.get: 'get',
  OpenApiPathMethodEnum.post: 'post',
  OpenApiPathMethodEnum.put: 'put',
  OpenApiPathMethodEnum.delete: 'delete',
  OpenApiPathMethodEnum.options: 'options',
  OpenApiPathMethodEnum.head: 'head',
  OpenApiPathMethodEnum.patch: 'patch',
  OpenApiPathMethodEnum.trace: 'trace',
  OpenApiPathMethodEnum.connect: 'connect',
  OpenApiPathMethodEnum.pat: 'pat',
};

_OpenApiTag _$OpenApiTagFromJson(Map<String, dynamic> json) => _OpenApiTag(
      name: json['name'] as String,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$OpenApiTagToJson(_OpenApiTag instance) =>
    <String, dynamic>{
      'name': instance.name,
      if (instance.description case final value?) 'description': value,
    };

_OpenApiServer _$OpenApiServerFromJson(Map<String, dynamic> json) =>
    _OpenApiServer(
      url: Uri.parse(json['url'] as String),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$OpenApiServerToJson(_OpenApiServer instance) =>
    <String, dynamic>{
      'url': instance.url.toString(),
      if (instance.description case final value?) 'description': value,
    };
