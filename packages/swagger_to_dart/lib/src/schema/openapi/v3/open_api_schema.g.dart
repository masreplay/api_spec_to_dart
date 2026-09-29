// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_api_schema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OpenApiSchemaType _$OpenApiSchemaTypeFromJson(Map<String, dynamic> json) =>
    OpenApiSchemaType(
      enum_: (json['enum'] as List<dynamic>?)?.map((e) => e as String).toList(),
      type: $enumDecodeNullable(
        _$OpenApiSchemaVarTypeEnumMap,
        json['type'],
        unknownValue: OpenApiSchemaVarType.$unknown,
      ),
      items: _$JsonConverterFromJson<Map<String, dynamic>, OpenApiSchema>(
        json['items'],
        const OpenApiSchemaJsonConverter().fromJson,
      ),
      maxLength: (json['maxLength'] as num?)?.toInt(),
      minLength: (json['minLength'] as num?)?.toInt(),
      format: json['format'] as String?,
      description: json['description'] as String?,
      pattern: json['pattern'] as String?,
      const_: json['const'],
      default_: json['default'],
      title: json['title'] as String?,
      nullable: json['nullable'] as bool?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$OpenApiSchemaTypeToJson(OpenApiSchemaType instance) =>
    <String, dynamic>{
      'enum': ?instance.enum_,
      'type': ?_$OpenApiSchemaVarTypeEnumMap[instance.type],
      'items': ?_$JsonConverterToJson<Map<String, dynamic>, OpenApiSchema>(
        instance.items,
        const OpenApiSchemaJsonConverter().toJson,
      ),
      'maxLength': ?instance.maxLength,
      'minLength': ?instance.minLength,
      'format': ?instance.format,
      'description': ?instance.description,
      'pattern': ?instance.pattern,
      'const': ?instance.const_,
      'default': ?instance.default_,
      'title': ?instance.title,
      'nullable': ?instance.nullable,
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
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);

OpenApiSchemaRef _$OpenApiSchemaRefFromJson(Map<String, dynamic> json) =>
    OpenApiSchemaRef(
      ref: json[r'$ref'] as String?,
      description: json['description'] as String?,
      default_: json['default'],
      title: json['title'] as String?,
      nullable: json['nullable'] as bool?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$OpenApiSchemaRefToJson(OpenApiSchemaRef instance) =>
    <String, dynamic>{
      r'$ref': ?instance.ref,
      'description': ?instance.description,
      'default': ?instance.default_,
      'title': ?instance.title,
      'nullable': ?instance.nullable,
      'runtimeType': instance.$type,
    };

OpenApiSchemaAnyOf _$OpenApiSchemaAnyOfFromJson(Map<String, dynamic> json) =>
    OpenApiSchemaAnyOf(
      anyOf:
          (json['anyOf'] as List<dynamic>?)
              ?.map(
                (e) => const OpenApiSchemaJsonConverter().fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList() ??
          const [],
      description: json['description'] as String?,
      title: json['title'] as String?,
      default_: json['default'],
      nullable: json['nullable'] as bool?,
      discriminator: json['discriminator'] == null
          ? null
          : OpenApiSchemaOneOfDiscriminator.fromJson(
              json['discriminator'] as Map<String, dynamic>,
            ),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$OpenApiSchemaAnyOfToJson(OpenApiSchemaAnyOf instance) =>
    <String, dynamic>{
      'anyOf': instance.anyOf
          .map(const OpenApiSchemaJsonConverter().toJson)
          .toList(),
      'description': ?instance.description,
      'title': ?instance.title,
      'default': ?instance.default_,
      'nullable': ?instance.nullable,
      'discriminator': ?instance.discriminator?.toJson(),
      'runtimeType': instance.$type,
    };

OpenApiSchemaOneOf _$OpenApiSchemaOneOfFromJson(Map<String, dynamic> json) =>
    OpenApiSchemaOneOf(
      oneOf:
          (json['oneOf'] as List<dynamic>?)
              ?.map(
                (e) => const OpenApiSchemaJsonConverter().fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList() ??
          const [],
      description: json['description'] as String?,
      title: json['title'] as String?,
      discriminator: json['discriminator'] == null
          ? null
          : OpenApiSchemaOneOfDiscriminator.fromJson(
              json['discriminator'] as Map<String, dynamic>,
            ),
      default_: json['default'],
      nullable: json['nullable'] as bool?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$OpenApiSchemaOneOfToJson(OpenApiSchemaOneOf instance) =>
    <String, dynamic>{
      'oneOf': instance.oneOf
          .map(const OpenApiSchemaJsonConverter().toJson)
          .toList(),
      'description': ?instance.description,
      'title': ?instance.title,
      'discriminator': ?instance.discriminator?.toJson(),
      'default': ?instance.default_,
      'nullable': ?instance.nullable,
      'runtimeType': instance.$type,
    };

_OpenApiSchemaOneOfDiscriminator _$OpenApiSchemaOneOfDiscriminatorFromJson(
  Map<String, dynamic> json,
) => _OpenApiSchemaOneOfDiscriminator(
  propertyName: json['propertyName'] as String,
  mapping: Map<String, String>.from(json['mapping'] as Map),
);

Map<String, dynamic> _$OpenApiSchemaOneOfDiscriminatorToJson(
  _OpenApiSchemaOneOfDiscriminator instance,
) => <String, dynamic>{
  'propertyName': instance.propertyName,
  'mapping': instance.mapping,
};
