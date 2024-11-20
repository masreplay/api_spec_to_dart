import 'package:freezed_annotation/freezed_annotation.dart';

part 'open_api_schema.freezed.dart';
part 'open_api_schema.g.dart';

const String _anyOfKey = 'anyOf';
const String _refKey = '\$ref';

@freezed
class OpenApiSchema with _$OpenApiSchema {
  const OpenApiSchema._();

  const factory OpenApiSchema.type({
    @JsonKey(
      name: 'type',
      unknownEnumValue: OpenApiSchemaVarType.$unknown,
    )
    OpenApiSchemaVarType? type,
    @JsonKey(name: 'format') String? format,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'pattern') String? pattern,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'default') Object? default_,
  }) = OpenApiSchemaType;

  const factory OpenApiSchema.ref({
    @JsonKey(name: _refKey) String? ref,
    @JsonKey(name: 'format') String? format,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'pattern') String? pattern,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'default') Object? default_,
  }) = OpenApiSchemaRef;

  const factory OpenApiSchema.anyOf({
    @OpenApiSchemaJsonMapConverter()
    @JsonKey(name: _anyOfKey)
    required List<OpenApiSchema>? anyOf,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'description') String? description,
  }) = OpenApiSchemaAnyOf;

  factory OpenApiSchema.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$OpenApiSchemaFromJson(json);
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

class OpenApiSchemaJsonMapConverter
    implements JsonConverter<OpenApiSchema, Map<String, dynamic>> {
  const OpenApiSchemaJsonMapConverter();

  @override
  OpenApiSchema fromJson(Map<String, dynamic> json) {
    if (json.containsKey(_anyOfKey)) {
      return OpenApiSchemaAnyOf.fromJson(json);
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
        newJson[entry.key] =
            _removeRuntimeType(entry.value as Map<String, dynamic>);
      } else if (entry.value is List) {
        newJson[entry.key] = (entry.value as List).map((e) {
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
