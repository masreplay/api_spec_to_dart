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

@freezed
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

class OpenApiPathMethodParameterSchemaJsonMapConverter
    implements
        JsonConverter<OpenApiPathMethodParameterSchema, Map<String, dynamic>> {
  const OpenApiPathMethodParameterSchemaJsonMapConverter();

  @override
  OpenApiPathMethodParameterSchema fromJson(Map<String, dynamic> json) {
    if (json.containsKey('anyOf')) {
      return _OpenApiPathMethodParameterSchemaAnyOf.fromJson(json);
    } else {
      return OpenApiPathMethodParameterSchemaDefault.fromJson(json);
    }
  }

  @override
  Map<String, dynamic> toJson(OpenApiPathMethodParameterSchema object) {
    return object.toJson();
  }
}

@freezed
class OpenApiPathMethodParameterSchema with _$OpenApiPathMethodParameterSchema {
  const OpenApiPathMethodParameterSchema._();

  const factory OpenApiPathMethodParameterSchema({
    @JsonKey(
      name: 'type',
      unknownEnumValue: OpenApiPathMethodParameterSchemaType.$unknown,
    )
    required OpenApiPathMethodParameterSchemaType type,
    @JsonKey(name: 'anyOf') @JsonKey(name: 'format') String? format,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'pattern') String? pattern,
    @JsonKey(name: 'default') Object? default_,
  }) = OpenApiPathMethodParameterSchemaDefault;

  const factory OpenApiPathMethodParameterSchema.anyOf({
    @OpenApiPathMethodParameterSchemaJsonMapConverter()
    @JsonKey(name: 'anyOf')
    required List<OpenApiPathMethodParameterSchemaDefault>? anyOf,
  }) = _OpenApiPathMethodParameterSchemaAnyOf;

  factory OpenApiPathMethodParameterSchema.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$OpenApiPathMethodParameterSchemaFromJson(json);
}

enum OpenApiPathMethodParameterSchemaType {
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
