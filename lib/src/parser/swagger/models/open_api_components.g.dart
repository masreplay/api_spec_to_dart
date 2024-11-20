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
    _$OpenApiSchemasImpl();

Map<String, dynamic> _$$OpenApiSchemasImplToJson(
        _$OpenApiSchemasImpl instance) =>
    <String, dynamic>{};
