// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_api_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OpenApiSchemaTypeImpl _$$OpenApiSchemaTypeImplFromJson(
        Map<String, dynamic> json) =>
    _$OpenApiSchemaTypeImpl(
      type: $enumDecodeNullable(
          _$OpenApiSchemaVariableTypeEnumMap, json['type'],
          unknownValue: OpenApiSchemaVariableType.$unknown),
      format: json['format'] as String?,
      description: json['description'] as String?,
      title: json['title'] as String?,
      pattern: json['pattern'] as String?,
      default_: json['default'],
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$OpenApiSchemaTypeImplToJson(
        _$OpenApiSchemaTypeImpl instance) =>
    <String, dynamic>{
      if (_$OpenApiSchemaVariableTypeEnumMap[instance.type] case final value?)
        'type': value,
      if (instance.format case final value?) 'format': value,
      if (instance.description case final value?) 'description': value,
      if (instance.title case final value?) 'title': value,
      if (instance.pattern case final value?) 'pattern': value,
      if (instance.default_ case final value?) 'default': value,
      'runtimeType': instance.$type,
    };

const _$OpenApiSchemaVariableTypeEnumMap = {
  OpenApiSchemaVariableType.string: 'string',
  OpenApiSchemaVariableType.number: 'number',
  OpenApiSchemaVariableType.integer: 'integer',
  OpenApiSchemaVariableType.boolean: 'boolean',
  OpenApiSchemaVariableType.array: 'array',
  OpenApiSchemaVariableType.object: 'object',
  OpenApiSchemaVariableType.null_: 'null',
  OpenApiSchemaVariableType.$unknown: r'$unknown',
};

_$OpenApiSchemaRefImpl _$$OpenApiSchemaRefImplFromJson(
        Map<String, dynamic> json) =>
    _$OpenApiSchemaRefImpl(
      ref: json[r'$ref'] as String?,
      format: json['format'] as String?,
      description: json['description'] as String?,
      title: json['title'] as String?,
      pattern: json['pattern'] as String?,
      default_: json['default'],
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$OpenApiSchemaRefImplToJson(
        _$OpenApiSchemaRefImpl instance) =>
    <String, dynamic>{
      if (instance.ref case final value?) r'$ref': value,
      if (instance.format case final value?) 'format': value,
      if (instance.description case final value?) 'description': value,
      if (instance.title case final value?) 'title': value,
      if (instance.pattern case final value?) 'pattern': value,
      if (instance.default_ case final value?) 'default': value,
      'runtimeType': instance.$type,
    };

_$OpenApiSchemaAnyOfImpl _$$OpenApiSchemaAnyOfImplFromJson(
        Map<String, dynamic> json) =>
    _$OpenApiSchemaAnyOfImpl(
      anyOf: (json['anyOf'] as List<dynamic>?)
          ?.map((e) => const OpenApiSchemaJsonMapConverter()
              .fromJson(e as Map<String, dynamic>))
          .toList(),
      title: json['title'] as String?,
      description: json['description'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$OpenApiSchemaAnyOfImplToJson(
        _$OpenApiSchemaAnyOfImpl instance) =>
    <String, dynamic>{
      if (instance.anyOf
              ?.map(const OpenApiSchemaJsonMapConverter().toJson)
              .toList()
          case final value?)
        'anyOf': value,
      if (instance.title case final value?) 'title': value,
      if (instance.description case final value?) 'description': value,
      'runtimeType': instance.$type,
    };
