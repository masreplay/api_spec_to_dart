// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_api_paths.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OpenApiPathMethodImpl _$$OpenApiPathMethodImplFromJson(
        Map<String, dynamic> json) =>
    _$OpenApiPathMethodImpl(
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      summary: json['summary'] as String?,
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
      'summary': instance.summary,
      'operationId': instance.operationId,
      'parameters': instance.parameters,
      'responses': instance.responses,
    };

_$OpenApiPathMethodParameterImpl _$$OpenApiPathMethodParameterImplFromJson(
        Map<String, dynamic> json) =>
    _$OpenApiPathMethodParameterImpl(
      name: json['name'] as String,
      in_: $enumDecode(_$OpenApiPathMethodParameterTypeEnumMap, json['in']),
      required_: json['required'] as bool,
      schema: OpenApiPathMethodParameterSchema.fromJson(
          json['schema'] as Map<String, dynamic>),
      description: json['description'] as String?,
      example: json['example'] as String?,
    );

Map<String, dynamic> _$$OpenApiPathMethodParameterImplToJson(
        _$OpenApiPathMethodParameterImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'in': _$OpenApiPathMethodParameterTypeEnumMap[instance.in_]!,
      'required': instance.required_,
      'schema': instance.schema,
      'description': instance.description,
      'example': instance.example,
    };

const _$OpenApiPathMethodParameterTypeEnumMap = {
  OpenApiPathMethodParameterType.query: 'query',
  OpenApiPathMethodParameterType.path: 'path',
  OpenApiPathMethodParameterType.header: 'header',
  OpenApiPathMethodParameterType.cookie: 'cookie',
};

_$OpenApiPathMethodParameterSchemaImpl
    _$$OpenApiPathMethodParameterSchemaImplFromJson(
            Map<String, dynamic> json) =>
        _$OpenApiPathMethodParameterSchemaImpl(
          type: $enumDecode(
              _$OpenApiPathMethodParameterSchemaTypeEnumMap, json['type']),
          format: json['format'] as String?,
          description: json['description'] as String?,
          title: json['title'] as String?,
          pattern: json['pattern'] as String?,
          anyOf: (json['anyOf'] as List<dynamic>?)
              ?.map((e) => OpenApiPathMethodParameterSchema.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          defaultValue: json['defaultValue'],
        );

Map<String, dynamic> _$$OpenApiPathMethodParameterSchemaImplToJson(
        _$OpenApiPathMethodParameterSchemaImpl instance) =>
    <String, dynamic>{
      'type': _$OpenApiPathMethodParameterSchemaTypeEnumMap[instance.type]!,
      'format': instance.format,
      'description': instance.description,
      'title': instance.title,
      'pattern': instance.pattern,
      'anyOf': instance.anyOf,
      'defaultValue': instance.defaultValue,
    };

const _$OpenApiPathMethodParameterSchemaTypeEnumMap = {
  OpenApiPathMethodParameterSchemaType.string: 'string',
  OpenApiPathMethodParameterSchemaType.number: 'number',
  OpenApiPathMethodParameterSchemaType.integer: 'integer',
  OpenApiPathMethodParameterSchemaType.boolean: 'boolean',
  OpenApiPathMethodParameterSchemaType.array: 'array',
  OpenApiPathMethodParameterSchemaType.object: 'object',
  OpenApiPathMethodParameterSchemaType.null_: 'null',
};

_$OpenApiPathMethodResponseImpl _$$OpenApiPathMethodResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$OpenApiPathMethodResponseImpl();

Map<String, dynamic> _$$OpenApiPathMethodResponseImplToJson(
        _$OpenApiPathMethodResponseImpl instance) =>
    <String, dynamic>{};
