// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_api_components.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OpenApiComponentsImpl _$$OpenApiComponentsImplFromJson(
        Map<String, dynamic> json) =>
    _$OpenApiComponentsImpl(
      schemas: (json['schemas'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(k, OpenApiSchemas.fromJson(e as Map<String, dynamic>)),
      ),
      securitySchemes: json['securitySchemes'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$OpenApiComponentsImplToJson(
        _$OpenApiComponentsImpl instance) =>
    <String, dynamic>{
      'schemas': instance.schemas.map((k, e) => MapEntry(k, e.toJson())),
      'securitySchemes': instance.securitySchemes,
    };

_$OpenApiSchemasImpl _$$OpenApiSchemasImplFromJson(Map<String, dynamic> json) =>
    _$OpenApiSchemasImpl(
      properties: (json['properties'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k,
            const OpenApiSchemaJsonConverter()
                .fromJson(e as Map<String, dynamic>)),
      ),
      type: json['type'] as String,
      required_: (json['required'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      enum_: (json['enum'] as List<dynamic>?)?.map((e) => e as Object).toList(),
      const_: json['const'],
      title: json['title'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$OpenApiSchemasImplToJson(
        _$OpenApiSchemasImpl instance) =>
    <String, dynamic>{
      if (instance.properties?.map((k, e) =>
              MapEntry(k, const OpenApiSchemaJsonConverter().toJson(e)))
          case final value?)
        'properties': value,
      'type': instance.type,
      if (instance.required_ case final value?) 'required': value,
      if (instance.enum_ case final value?) 'enum': value,
      if (instance.const_ case final value?) 'const': value,
      if (instance.title case final value?) 'title': value,
      if (instance.description case final value?) 'description': value,
    };
