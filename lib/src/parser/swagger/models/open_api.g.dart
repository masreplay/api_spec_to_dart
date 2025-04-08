// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OpenApi _$OpenApiFromJson(Map<String, dynamic> json) => _OpenApi(
      openapi: json['openapi'] as String,
      info: OpenApiInfo.fromJson(json['info'] as Map<String, dynamic>),
      servers: (json['servers'] as List<dynamic>?)
          ?.map((e) => OpenApiServer.fromJson(e as Map<String, dynamic>))
          .toList(),
      paths: (json['paths'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, OpenApiPath.fromJson(e as Map<String, dynamic>)),
      ),
      components: OpenApiComponents.fromJson(
          json['components'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OpenApiToJson(_OpenApi instance) => <String, dynamic>{
      'openapi': instance.openapi,
      'info': instance.info.toJson(),
      if (instance.servers?.map((e) => e.toJson()).toList() case final value?)
        'servers': value,
      'paths': instance.paths.map((k, e) => MapEntry(k, e.toJson())),
      'components': instance.components.toJson(),
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
