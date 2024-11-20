// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_api_paths.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OpenApiPathImpl _$$OpenApiPathImplFromJson(Map<String, dynamic> json) =>
    _$OpenApiPathImpl(
      get: json['get'] == null
          ? null
          : OpenApiPathMethod.fromJson(json['get'] as Map<String, dynamic>),
      post: json['post'] == null
          ? null
          : OpenApiPathMethod.fromJson(json['post'] as Map<String, dynamic>),
      put: json['put'] == null
          ? null
          : OpenApiPathMethod.fromJson(json['put'] as Map<String, dynamic>),
      delete: json['delete'] == null
          ? null
          : OpenApiPathMethod.fromJson(json['delete'] as Map<String, dynamic>),
      options: json['options'] == null
          ? null
          : OpenApiPathMethod.fromJson(json['options'] as Map<String, dynamic>),
      head: json['head'] == null
          ? null
          : OpenApiPathMethod.fromJson(json['head'] as Map<String, dynamic>),
      patch: json['patch'] == null
          ? null
          : OpenApiPathMethod.fromJson(json['patch'] as Map<String, dynamic>),
      trace: json['trace'] == null
          ? null
          : OpenApiPathMethod.fromJson(json['trace'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OpenApiPathImplToJson(_$OpenApiPathImpl instance) =>
    <String, dynamic>{
      if (instance.get?.toJson() case final value?) 'get': value,
      if (instance.post?.toJson() case final value?) 'post': value,
      if (instance.put?.toJson() case final value?) 'put': value,
      if (instance.delete?.toJson() case final value?) 'delete': value,
      if (instance.options?.toJson() case final value?) 'options': value,
      if (instance.head?.toJson() case final value?) 'head': value,
      if (instance.patch?.toJson() case final value?) 'patch': value,
      if (instance.trace?.toJson() case final value?) 'trace': value,
    };

_$OpenApiPathMethodImpl _$$OpenApiPathMethodImplFromJson(
        Map<String, dynamic> json) =>
    _$OpenApiPathMethodImpl(
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      summary: json['summary'] as String?,
      description: json['description'] as String?,
      operationId: json['operationId'] as String,
      parameters: (json['parameters'] as List<dynamic>)
          .map((e) =>
              OpenApiPathMethodParameter.fromJson(e as Map<String, dynamic>))
          .toList(),
      responses: (json['responses'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k, OpenApiPathMethodResponse.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$OpenApiPathMethodImplToJson(
        _$OpenApiPathMethodImpl instance) =>
    <String, dynamic>{
      'tags': instance.tags,
      if (instance.summary case final value?) 'summary': value,
      if (instance.description case final value?) 'description': value,
      'operationId': instance.operationId,
      'parameters': instance.parameters.map((e) => e.toJson()).toList(),
      if (instance.responses?.map((k, e) => MapEntry(k, e.toJson()))
          case final value?)
        'responses': value,
    };

_$OpenApiPathMethodParameterImpl _$$OpenApiPathMethodParameterImplFromJson(
        Map<String, dynamic> json) =>
    _$OpenApiPathMethodParameterImpl(
      name: json['name'] as String,
      in_: $enumDecode(_$OpenApiPathMethodParameterTypeEnumMap, json['in']),
      required_: json['required'] as bool,
      schema: const OpenApiPathMethodParameterSchemaJsonMapConverter()
          .fromJson(json['schema'] as Map<String, dynamic>),
      description: json['description'] as String?,
      example: json['example'] as String?,
    );

Map<String, dynamic> _$$OpenApiPathMethodParameterImplToJson(
        _$OpenApiPathMethodParameterImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'in': _$OpenApiPathMethodParameterTypeEnumMap[instance.in_]!,
      'required': instance.required_,
      'schema': const OpenApiPathMethodParameterSchemaJsonMapConverter()
          .toJson(instance.schema),
      if (instance.description case final value?) 'description': value,
      if (instance.example case final value?) 'example': value,
    };

const _$OpenApiPathMethodParameterTypeEnumMap = {
  OpenApiPathMethodParameterType.query: 'query',
  OpenApiPathMethodParameterType.path: 'path',
  OpenApiPathMethodParameterType.header: 'header',
  OpenApiPathMethodParameterType.cookie: 'cookie',
};

_$OpenApiPathMethodParameterSchemaDefaultImpl
    _$$OpenApiPathMethodParameterSchemaDefaultImplFromJson(
            Map<String, dynamic> json) =>
        _$OpenApiPathMethodParameterSchemaDefaultImpl(
          type: $enumDecode(
              _$OpenApiPathMethodParameterSchemaTypeEnumMap, json['type'],
              unknownValue: OpenApiPathMethodParameterSchemaType.$unknown),
          format: json['anyOf'] as String?,
          description: json['description'] as String?,
          title: json['title'] as String?,
          pattern: json['pattern'] as String?,
          default_: json['default'],
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$OpenApiPathMethodParameterSchemaDefaultImplToJson(
        _$OpenApiPathMethodParameterSchemaDefaultImpl instance) =>
    <String, dynamic>{
      'type': _$OpenApiPathMethodParameterSchemaTypeEnumMap[instance.type]!,
      if (instance.format case final value?) 'anyOf': value,
      if (instance.description case final value?) 'description': value,
      if (instance.title case final value?) 'title': value,
      if (instance.pattern case final value?) 'pattern': value,
      if (instance.default_ case final value?) 'default': value,
      'runtimeType': instance.$type,
    };

const _$OpenApiPathMethodParameterSchemaTypeEnumMap = {
  OpenApiPathMethodParameterSchemaType.string: 'string',
  OpenApiPathMethodParameterSchemaType.number: 'number',
  OpenApiPathMethodParameterSchemaType.integer: 'integer',
  OpenApiPathMethodParameterSchemaType.boolean: 'boolean',
  OpenApiPathMethodParameterSchemaType.array: 'array',
  OpenApiPathMethodParameterSchemaType.object: 'object',
  OpenApiPathMethodParameterSchemaType.null_: 'null',
  OpenApiPathMethodParameterSchemaType.$unknown: r'$unknown',
};

_$OpenApiPathMethodParameterSchemaAnyOfImpl
    _$$OpenApiPathMethodParameterSchemaAnyOfImplFromJson(
            Map<String, dynamic> json) =>
        _$OpenApiPathMethodParameterSchemaAnyOfImpl(
          anyOf: (json['anyOf'] as List<dynamic>?)
              ?.map((e) => OpenApiPathMethodParameterSchemaDefault.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$OpenApiPathMethodParameterSchemaAnyOfImplToJson(
        _$OpenApiPathMethodParameterSchemaAnyOfImpl instance) =>
    <String, dynamic>{
      if (instance.anyOf?.map((e) => e.toJson()).toList() case final value?)
        'anyOf': value,
      'runtimeType': instance.$type,
    };

_$OpenApiPathMethodResponseImpl _$$OpenApiPathMethodResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$OpenApiPathMethodResponseImpl();

Map<String, dynamic> _$$OpenApiPathMethodResponseImplToJson(
        _$OpenApiPathMethodResponseImpl instance) =>
    <String, dynamic>{};
