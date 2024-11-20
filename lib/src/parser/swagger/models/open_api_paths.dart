import 'package:freezed_annotation/freezed_annotation.dart';

part 'open_api_paths.freezed.dart';
part 'open_api_paths.g.dart';

/// "paths": {}
typedef OpenApiPaths = Map<Uri, OpenApiPath>;

@freezed
class OpenApiPath with _$OpenApiPath {
  factory OpenApiPath({
    OpenApiPathMethod? get,
    OpenApiPathMethod? post,
    OpenApiPathMethod? put,
    OpenApiPathMethod? delete,
    OpenApiPathMethod? options,
    OpenApiPathMethod? head,
    OpenApiPathMethod? patch,
    OpenApiPathMethod? trace,
  }) = _OpenApiPath;

  factory OpenApiPath.fromJson(Map<String, dynamic> json) =>
      _$OpenApiPathFromJson(json);
}

@freezed
class OpenApiPathMethod with _$OpenApiPathMethod {
  const OpenApiPathMethod._();

  const factory OpenApiPathMethod({
    @JsonKey(name: 'tags') required OpenApiPathMethodTags tags,
    @JsonKey(name: 'summary') required String? summary,
    @JsonKey(name: 'description') required String? description,
    @JsonKey(name: 'operationId') required String operationId,
    @JsonKey(name: 'parameters')
    required OpenApiPathMethodParameters parameters,
    required OpenApiPathMethodResponses? responses,
  }) = _OpenApiPathMethod;

  factory OpenApiPathMethod.fromJson(Map<String, dynamic> json) =>
      _$OpenApiPathMethodFromJson(json);
}

typedef OpenApiPathMethodTags = List<String>;

typedef OpenApiPathMethodParameters = List<OpenApiPathMethodParameter>;

@Freezed()
class OpenApiPathMethodParameter with _$OpenApiPathMethodParameter {
  const OpenApiPathMethodParameter._();

  const factory OpenApiPathMethodParameter({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'in') required OpenApiPathMethodParameterType in_,
    @JsonKey(name: 'required') required bool required_,
    @OpenApiPathMethodParameterSchemaJsonMapConverter()
    @JsonKey(name: 'schema')
    required OpenApiPathMethodParameterSchema schema,
    String? description,
    String? example,
  }) = _OpenApiPathMethodParameter;

  factory OpenApiPathMethodParameter.fromJson(Map<String, dynamic> json) =>
      _$OpenApiPathMethodParameterFromJson(json);
}

enum OpenApiPathMethodParameterType {
  query,
  path,
  header,
  cookie,
}

const String _anyOfKey = 'anyOf';
const String _refKey = '\$ref';

class OpenApiPathMethodParameterSchemaJsonMapConverter
    implements
        JsonConverter<OpenApiPathMethodParameterSchema, Map<String, dynamic>> {
  const OpenApiPathMethodParameterSchemaJsonMapConverter();

  @override
  OpenApiPathMethodParameterSchema fromJson(Map<String, dynamic> json) {
    if (json.containsKey(_anyOfKey)) {
      return OpenApiPathMethodParameterSchemaAnyOf.fromJson(json);
    } else if (json.containsKey(_refKey)) {
      return OpenApiPathMethodParameterSchemaRef.fromJson(json);
    } else {
      return OpenApiPathMethodParameterSchemaType.fromJson(json);
    }
  }

  @override
  Map<String, dynamic> toJson(OpenApiPathMethodParameterSchema object) {
    final json = object.toJson();

    return removeRuntimeType(json);
  }
}

Map<String, dynamic> removeRuntimeType(Map<String, dynamic> json) {
  final newJson = <String, dynamic>{};

  for (final entry in json.entries) {
    if (entry.key == 'runtimeType') {
      continue;
    }

    if (entry.value is Map<String, dynamic>) {
      newJson[entry.key] =
          removeRuntimeType(entry.value as Map<String, dynamic>);
    } else if (entry.value is List) {
      newJson[entry.key] = (entry.value as List).map((e) {
        if (e is Map<String, dynamic>) {
          return removeRuntimeType(e);
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

@freezed
class OpenApiPathMethodParameterSchema with _$OpenApiPathMethodParameterSchema {
  const OpenApiPathMethodParameterSchema._();

  const factory OpenApiPathMethodParameterSchema.type({
    @JsonKey(
      name: 'type',
      unknownEnumValue: OpenApiSchemaVariableType.$unknown,
    )
    OpenApiSchemaVariableType? type,
    @JsonKey(name: 'format') String? format,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'pattern') String? pattern,
    @JsonKey(name: 'default') Object? default_,
  }) = OpenApiPathMethodParameterSchemaType;

  const factory OpenApiPathMethodParameterSchema.ref({
    @JsonKey(name: _refKey) String? ref,
    @JsonKey(name: 'format') String? format,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'pattern') String? pattern,
    @JsonKey(name: 'default') Object? default_,
  }) = OpenApiPathMethodParameterSchemaRef;

  const factory OpenApiPathMethodParameterSchema.anyOf({
    @OpenApiPathMethodParameterSchemaJsonMapConverter()
    @JsonKey(name: _anyOfKey)
    required List<OpenApiPathMethodParameterSchema>? anyOf,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'description') String? description,
  }) = OpenApiPathMethodParameterSchemaAnyOf;

  factory OpenApiPathMethodParameterSchema.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$OpenApiPathMethodParameterSchemaFromJson(json);
}

enum OpenApiSchemaVariableType {
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

// "responses": { "200": {} }
typedef OpenApiPathMethodResponses = Map<String, OpenApiPathMethodResponse>;

@freezed
class OpenApiPathMethodResponse with _$OpenApiPathMethodResponse {
  factory OpenApiPathMethodResponse() = _OpenApiPathMethodResponse;

  factory OpenApiPathMethodResponse.fromJson(Map<String, dynamic> json) =>
      _$OpenApiPathMethodResponseFromJson(json);
}
