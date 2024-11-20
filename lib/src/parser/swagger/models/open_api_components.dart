import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

part 'open_api_components.freezed.dart';
part 'open_api_components.g.dart';

@freezed
class OpenApiComponents with _$OpenApiComponents {
  const OpenApiComponents._();

  const factory OpenApiComponents({
    @JsonKey(name: 'schemas') required Map<String, OpenApiSchemas> schemas,
    @JsonKey(name: 'securitySchemes')
    required Map<String, dynamic> securitySchemes,
  }) = _OpenApiComponents;

  factory OpenApiComponents.fromJson(Map<String, dynamic> json) =>
      _$OpenApiComponentsFromJson(json);
}

@freezed
class OpenApiSchemas with _$OpenApiSchemas {
  const OpenApiSchemas._();

  const factory OpenApiSchemas({
    @OpenApiSchemaJsonConverter()
    @JsonKey(name: 'properties')
    required Map<String, OpenApiSchema>? properties,
    @JsonKey(name: 'type') required String type,
    @JsonKey(name: 'required') required List<String>? required,
    @JsonKey(name: 'enum') required List<Object>? enum_,
    @JsonKey(name: 'const') required Object? const_,
    @JsonKey(name: 'title') required String? title,
    @JsonKey(name: 'description') required String? description,
  }) = _OpenApiSchemas;

  factory OpenApiSchemas.fromJson(Map<String, dynamic> json) =>
      _$OpenApiSchemasFromJson(json);
}
