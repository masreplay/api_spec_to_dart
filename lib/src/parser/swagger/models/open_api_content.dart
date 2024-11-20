import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

part 'open_api_content.freezed.dart';
part 'open_api_content.g.dart';

@freezed
class OpenApiContent with _$OpenApiContent {
  factory OpenApiContent({
    @JsonKey(name: 'application/json')
    required OpenApiContentSchema? applicationJson,
    @JsonKey(name: 'application/x-www-form-urlencoded')
    required OpenApiContentSchema? applicationXWwwFormUrlencoded,
    @JsonKey(name: 'multipart/form-data')
    required OpenApiContentSchema? multipartFormData,
  }) = _OpenApiContent;

  factory OpenApiContent.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$OpenApiContentFromJson(json);
}

@freezed
class OpenApiContentSchema with _$OpenApiContentSchema {
  factory OpenApiContentSchema({
    @OpenApiSchemaJsonMapConverter()
    @JsonKey(name: 'schema')
    required OpenApiSchema schema,
  }) = _OpenApiContentSchema;

  factory OpenApiContentSchema.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$OpenApiContentSchemaFromJson(json);
}
