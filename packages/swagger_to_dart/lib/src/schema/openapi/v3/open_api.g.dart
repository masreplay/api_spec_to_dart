// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OpenApi _$OpenApiFromJson(Map<String, dynamic> json) => _OpenApi(
      openapi: json['openapi'] as String?,
      info: OpenApiInfo.fromJson(json['info'] as Map<String, dynamic>),
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
    );

Map<String, dynamic> _$OpenApiToJson(_OpenApi instance) => <String, dynamic>{
      if (instance.openapi case final value?) 'openapi': value,
      'info': instance.info.toJson(),
      if (instance.servers?.map((e) => e.toJson()).toList() case final value?)
        'servers': value,
      if (instance.paths?.map((k, e) => MapEntry(
              k,
              e.map((k, e) =>
                  MapEntry(_$OpenApiPathMethodEnumEnumMap[k]!, e.toJson()))))
          case final value?)
        'paths': value,
      if (instance.components?.toJson() case final value?) 'components': value,
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
