// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OpenApiImpl _$$OpenApiImplFromJson(Map<String, dynamic> json) =>
    _$OpenApiImpl(
      openapi: json['openapi'] as String,
      info: OpenApiInfo.fromJson(json['info'] as Map<String, dynamic>),
      servers:
          (json['servers'] as List<dynamic>?)?.map((e) => e as String).toList(),
      paths: (json['paths'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            k,
            (e as Map<String, dynamic>).map(
              (k, e) => MapEntry($enumDecode(_$OpenApiPathMethodTypeEnumMap, k),
                  OpenApiPathMethod.fromJson(e as Map<String, dynamic>)),
            )),
      ),
      components: OpenApiComponents.fromJson(
          json['components'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OpenApiImplToJson(_$OpenApiImpl instance) =>
    <String, dynamic>{
      'openapi': instance.openapi,
      'info': instance.info.toJson(),
      if (instance.servers case final value?) 'servers': value,
      'paths': instance.paths.map((k, e) => MapEntry(
          k,
          e.map((k, e) =>
              MapEntry(_$OpenApiPathMethodTypeEnumMap[k]!, e.toJson())))),
      'components': instance.components.toJson(),
    };

const _$OpenApiPathMethodTypeEnumMap = {
  OpenApiPathMethodType.get: 'get',
  OpenApiPathMethodType.post: 'post',
  OpenApiPathMethodType.put: 'put',
  OpenApiPathMethodType.delete: 'delete',
  OpenApiPathMethodType.options: 'options',
  OpenApiPathMethodType.head: 'head',
  OpenApiPathMethodType.patch: 'patch',
  OpenApiPathMethodType.trace: 'trace',
};
