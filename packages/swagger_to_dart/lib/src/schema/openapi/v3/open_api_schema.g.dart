// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_api_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OpenApiSchemaType _$OpenApiSchemaTypeFromJson(Map<String, dynamic> json) =>
    OpenApiSchemaType(
      enum_: (json['enum'] as List<dynamic>?)?.map((e) => e as String).toList(),
      type: $enumDecodeNullable(_$OpenApiSchemaVarTypeEnumMap, json['type'],
          unknownValue: OpenApiSchemaVarType.$unknown),
      items: _$JsonConverterFromJson<Map<String, dynamic>, OpenApiSchema>(
          json['items'], const OpenApiSchemaJsonConverter().fromJson),
      maxLength: (json['maxLength'] as num?)?.toInt(),
      minLength: (json['minLength'] as num?)?.toInt(),
      format: json['format'] as String?,
      description: json['description'] as String?,
      pattern: json['pattern'] as String?,
      const_: json['const'],
      default_: json['default'],
      title: json['title'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$OpenApiSchemaTypeToJson(OpenApiSchemaType instance) =>
    <String, dynamic>{
      if (instance.enum_ case final value?) 'enum': value,
      if (_$OpenApiSchemaVarTypeEnumMap[instance.type] case final value?)
        'type': value,
      if (_$JsonConverterToJson<Map<String, dynamic>, OpenApiSchema>(
              instance.items, const OpenApiSchemaJsonConverter().toJson)
          case final value?)
        'items': value,
      if (instance.maxLength case final value?) 'maxLength': value,
      if (instance.minLength case final value?) 'minLength': value,
      if (instance.format case final value?) 'format': value,
      if (instance.description case final value?) 'description': value,
      if (instance.pattern case final value?) 'pattern': value,
      if (instance.const_ case final value?) 'const': value,
      if (instance.default_ case final value?) 'default': value,
      if (instance.title case final value?) 'title': value,
      'runtimeType': instance.$type,
    };

const _$OpenApiSchemaVarTypeEnumMap = {
  OpenApiSchemaVarType.string: 'string',
  OpenApiSchemaVarType.number: 'number',
  OpenApiSchemaVarType.integer: 'integer',
  OpenApiSchemaVarType.boolean: 'boolean',
  OpenApiSchemaVarType.array: 'array',
  OpenApiSchemaVarType.object: 'object',
  OpenApiSchemaVarType.null_: 'null',
  OpenApiSchemaVarType.$unknown: r'$unknown',
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);

OpenApiSchemaRef _$OpenApiSchemaRefFromJson(Map<String, dynamic> json) =>
    OpenApiSchemaRef(
      ref: json[r'$ref'] as String?,
      description: json['description'] as String?,
      default_: json['default'],
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$OpenApiSchemaRefToJson(OpenApiSchemaRef instance) =>
    <String, dynamic>{
      if (instance.ref case final value?) r'$ref': value,
      if (instance.description case final value?) 'description': value,
      if (instance.default_ case final value?) 'default': value,
      'runtimeType': instance.$type,
    };

OpenApiSchemaAnyOf _$OpenApiSchemaAnyOfFromJson(Map<String, dynamic> json) =>
    OpenApiSchemaAnyOf(
      anyOf: (json['anyOf'] as List<dynamic>?)
              ?.map((e) => const OpenApiSchemaJsonConverter()
                  .fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      description: json['description'] as String?,
      title: json['title'] as String?,
      default_: json['default'],
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$OpenApiSchemaAnyOfToJson(OpenApiSchemaAnyOf instance) =>
    <String, dynamic>{
      'anyOf': instance.anyOf
          .map(const OpenApiSchemaJsonConverter().toJson)
          .toList(),
      if (instance.description case final value?) 'description': value,
      if (instance.title case final value?) 'title': value,
      if (instance.default_ case final value?) 'default': value,
      'runtimeType': instance.$type,
    };

OpenApiSchemaOneOf _$OpenApiSchemaOneOfFromJson(Map<String, dynamic> json) =>
    OpenApiSchemaOneOf(
      oneOf: (json['oneOf'] as List<dynamic>?)
              ?.map((e) => const OpenApiSchemaJsonConverter()
                  .fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      description: json['description'] as String?,
      title: json['title'] as String?,
      discriminator: OpenApiSchemaOneOfDiscriminator.fromJson(
          json['discriminator'] as Map<String, dynamic>),
      default_: json['default'],
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$OpenApiSchemaOneOfToJson(OpenApiSchemaOneOf instance) =>
    <String, dynamic>{
      'oneOf': instance.oneOf
          .map(const OpenApiSchemaJsonConverter().toJson)
          .toList(),
      if (instance.description case final value?) 'description': value,
      if (instance.title case final value?) 'title': value,
      'discriminator': instance.discriminator.toJson(),
      if (instance.default_ case final value?) 'default': value,
      'runtimeType': instance.$type,
    };

_OpenApiSchemaOneOfDiscriminator _$OpenApiSchemaOneOfDiscriminatorFromJson(
        Map<String, dynamic> json) =>
    _OpenApiSchemaOneOfDiscriminator(
      propertyName: json['propertyName'] as String,
      mapping: Map<String, String>.from(json['mapping'] as Map),
    );

Map<String, dynamic> _$OpenApiSchemaOneOfDiscriminatorToJson(
        _OpenApiSchemaOneOfDiscriminator instance) =>
    <String, dynamic>{
      'propertyName': instance.propertyName,
      'mapping': instance.mapping,
    };
