import 'package:freezed_annotation/freezed_annotation.dart';

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

  const factory OpenApiSchemas() = _OpenApiSchemas;

  factory OpenApiSchemas.fromJson(Map<String, dynamic> json) =>
      _$OpenApiSchemasFromJson(json);
}
