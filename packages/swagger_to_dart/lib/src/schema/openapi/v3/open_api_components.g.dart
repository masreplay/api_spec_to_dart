// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_api_components.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OpenApiComponents _$OpenApiComponentsFromJson(Map<String, dynamic> json) =>
    _OpenApiComponents(
      schemas: (json['schemas'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, OpenApiSchemas.fromJson(e as Map<String, dynamic>)),
      ),
      securitySchemes: json['securitySchemes'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$OpenApiComponentsToJson(_OpenApiComponents instance) =>
    <String, dynamic>{
      'schemas': ?instance.schemas?.map((k, e) => MapEntry(k, e.toJson())),
      'securitySchemes': ?instance.securitySchemes,
    };

_OpenApiSchemas _$OpenApiSchemasFromJson(Map<String, dynamic> json) =>
    _OpenApiSchemas(
      properties: (json['properties'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
          k,
          const OpenApiSchemaJsonConverter().fromJson(
            e as Map<String, dynamic>,
          ),
        ),
      ),
      type: json['type'] as String,
      required_: (json['required'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      enum_: (json['enum'] as List<dynamic>?)?.map((e) => e as Object).toList(),
      const_: json['const'],
      title: json['title'] as String?,
      description: json['description'] as String?,
      xEnumVarnames: (json['x-enum-varnames'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      additionalProperties: json['additionalProperties'],
    );

Map<String, dynamic> _$OpenApiSchemasToJson(_OpenApiSchemas instance) =>
    <String, dynamic>{
      'properties': ?instance.properties?.map(
        (k, e) => MapEntry(k, const OpenApiSchemaJsonConverter().toJson(e)),
      ),
      'type': instance.type,
      'required': ?instance.required_,
      'enum': ?instance.enum_,
      'const': ?instance.const_,
      'title': ?instance.title,
      'description': ?instance.description,
      'x-enum-varnames': ?instance.xEnumVarnames,
      'additionalProperties': ?instance.additionalProperties,
    };
