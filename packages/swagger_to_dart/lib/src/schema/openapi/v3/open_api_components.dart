import 'package:freezed_annotation/freezed_annotation.dart';
import 'open_api_schema.dart';

part 'open_api_components.freezed.dart';
part 'open_api_components.g.dart';

@freezed
abstract class OpenApiComponents with _$OpenApiComponents {
  const OpenApiComponents._();

  const factory OpenApiComponents({
    @JsonKey(name: 'schemas') Map<String, OpenApiSchemas>? schemas,
    @JsonKey(name: 'securitySchemes')
    required Map<String, dynamic>? securitySchemes,
  }) = _OpenApiComponents;

  factory OpenApiComponents.fromJson(Map<String, dynamic> json) =>
      _$OpenApiComponentsFromJson(json);
}

@freezed
abstract class OpenApiSchemas with _$OpenApiSchemas {
  const OpenApiSchemas._();

  const factory OpenApiSchemas({
    @OpenApiSchemaJsonConverter()
    @JsonKey(name: 'properties')
    required Map<String, OpenApiSchema>? properties,
    @JsonKey(name: 'type') required String type,
    @JsonKey(name: 'required') List<String>? required_,
    @JsonKey(name: 'enum') List<Object>? enum_,
    @JsonKey(name: 'const') Object? const_,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'x-enum-varnames') List<String>? xEnumVarnames,
    @JsonKey(name: 'additionalProperties') bool? additionalProperties,
  }) = _OpenApiSchemas;

  factory OpenApiSchemas.fromJson(Map<String, dynamic> json) =>
      _$OpenApiSchemasFromJson(json);
}
