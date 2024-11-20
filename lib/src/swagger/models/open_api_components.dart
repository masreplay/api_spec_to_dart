import 'package:freezed_annotation/freezed_annotation.dart';

part 'open_api_components.freezed.dart';
part 'open_api_components.g.dart';

@freezed
class OpenApiComponents with _$OpenApiComponents {
  const OpenApiComponents._();

  const factory OpenApiComponents({
    @JsonKey(name: 'schemas') required Map<String, OpenApiSchema> schemas,
    @JsonKey(name: 'securitySchemes')
    required Map<String, dynamic> securitySchemes,
  }) = _OpenApiComponents;

  factory OpenApiComponents.fromJson(Map<String, dynamic> json) =>
      _$OpenApiComponentsFromJson(json);
}

@freezed
class OpenApiSchema with _$OpenApiSchema {
  const OpenApiSchema._();

  const factory OpenApiSchema() = _OpenApiSchema;

  factory OpenApiSchema.fromJson(Map<String, dynamic> json) =>
      _$OpenApiSchemaFromJson(json);
}
