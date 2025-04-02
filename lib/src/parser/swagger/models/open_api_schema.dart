import 'package:freezed_annotation/freezed_annotation.dart';

part 'open_api_schema.freezed.dart';
part 'open_api_schema.g.dart';

const String _anyOfKey = 'anyOf';
const String _oneOfKey = 'oneOf';
const String _refKey = '\$ref';

@Freezed()
sealed class OpenApiSchema with _$OpenApiSchema {
  const OpenApiSchema._();

  @FreezedUnionValue('type')
  const factory OpenApiSchema.type({
    @JsonKey(name: 'enum') List<String>? enum_,
    @JsonKey(name: 'type', unknownEnumValue: OpenApiSchemaVarType.$unknown)
    OpenApiSchemaVarType? type,
    @OpenApiSchemaJsonConverter() @JsonKey(name: 'items') OpenApiSchema? items,
    @JsonKey(name: 'maxLength') int? maxLength,
    @JsonKey(name: 'minLength') int? minLength,
    @JsonKey(name: 'format') String? format,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'pattern') String? pattern,
    @JsonKey(name: 'const') Object? const_,
    @JsonKey(name: 'default') Object? default_,
    @JsonKey(name: 'title') String? title,
  }) = OpenApiSchemaType;

  @FreezedUnionValue('ref')
  const factory OpenApiSchema.ref({
    @JsonKey(name: _refKey) String? ref,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'default') Object? default_,
  }) = OpenApiSchemaRef;

  @FreezedUnionValue('anyOf')
  const factory OpenApiSchema.anyOf({
    @OpenApiSchemaJsonConverter()
    @JsonKey(name: _anyOfKey)
    required List<OpenApiSchema>? anyOf,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'default') Object? default_,
  }) = OpenApiSchemaAnyOf;

  @FreezedUnionValue('oneOf')
  const factory OpenApiSchema.oneOf({
    @OpenApiSchemaJsonConverter()
    @JsonKey(name: _oneOfKey)
    required List<OpenApiSchema>? oneOf,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'discriminator')
    required OpenApiSchemaOneOfDiscriminator discriminator,
  }) = OpenApiSchemaOneOf;

  factory OpenApiSchema.fromJson(Map<String, dynamic> json) {
    // Add a fallback type if runtimeType is missing
    if (!json.containsKey('runtimeType')) {
      if (json.containsKey(_anyOfKey)) {
        json = Map<String, dynamic>.from(json)..['runtimeType'] = 'anyOf';
      } else if (json.containsKey(_oneOfKey)) {
        json = Map<String, dynamic>.from(json)..['runtimeType'] = 'oneOf';
      } else if (json.containsKey(_refKey)) {
        json = Map<String, dynamic>.from(json)..['runtimeType'] = 'ref';
      } else {
        json = Map<String, dynamic>.from(json)..['runtimeType'] = 'type';
      }
    }
    return _$OpenApiSchemaFromJson(json);
  }
}

@freezed
abstract class OpenApiSchemaOneOfDiscriminator
    with _$OpenApiSchemaOneOfDiscriminator {
  factory OpenApiSchemaOneOfDiscriminator({
    @JsonKey(name: 'propertyName') required String propertyName,
    @JsonKey(name: 'mapping') required Map<String, String> mapping,
  }) = _OpenApiSchemaOneOfDiscriminator;

  factory OpenApiSchemaOneOfDiscriminator.fromJson(Map<String, dynamic> json) =>
      _$OpenApiSchemaOneOfDiscriminatorFromJson(json);
}

enum OpenApiSchemaVarType {
  @JsonValue('string')
  string,
  @JsonValue('number')
  number,
  @JsonValue('integer')
  integer,
  @JsonValue('boolean')
  boolean,
  @JsonValue('array')
  array,
  @JsonValue('object')
  object,
  @JsonValue('null')
  null_,

  $unknown,
}

const String _unionKeyType = 'runtimeType';

class OpenApiSchemaJsonConverter
    implements JsonConverter<OpenApiSchema, Map<String, dynamic>> {
  const OpenApiSchemaJsonConverter();

  @override
  OpenApiSchema fromJson(Map<String, dynamic> json) {
    if (json.containsKey(_anyOfKey)) {
      return OpenApiSchemaAnyOf.fromJson(json);
    } else if (json.containsKey(_oneOfKey)) {
      return OpenApiSchemaOneOf.fromJson(json);
    } else if (json.containsKey(_refKey)) {
      return OpenApiSchemaRef.fromJson(json);
    } else {
      return OpenApiSchemaType.fromJson(json);
    }
  }

  @override
  Map<String, dynamic> toJson(OpenApiSchema object) {
    final json = object.toJson();

    return _removeRuntimeType(json);
  }

  Map<String, dynamic> _removeRuntimeType(Map<String, dynamic> json) {
    final newJson = <String, dynamic>{};

    for (final entry in json.entries) {
      if (entry.key == _unionKeyType) {
        continue;
      }

      if (entry.value is Map<String, dynamic>) {
        newJson[entry.key] = _removeRuntimeType(
          entry.value as Map<String, dynamic>,
        );
      } else if (entry.value is List) {
        newJson[entry.key] =
            (entry.value as List).map((e) {
              if (e is Map<String, dynamic>) {
                return _removeRuntimeType(e);
              } else {
                return e;
              }
            }).toList();
      } else {
        newJson[entry.key] = entry.value;
      }
    }

    return newJson;
  }
}
