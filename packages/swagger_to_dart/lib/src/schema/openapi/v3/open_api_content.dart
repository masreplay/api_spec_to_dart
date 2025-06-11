import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

part 'open_api_content.freezed.dart';
part 'open_api_content.g.dart';

@JsonEnum(alwaysCreate: true)
enum OpenApiContentType {
  @JsonValue('application/json')
  applicationJson,
  @JsonValue('application/x-www-form-urlencoded')
  applicationXWwwFormUrlencoded,
  @JsonValue('multipart/form-data')
  multipartFormData;
}

typedef OpenApiContent = Map<OpenApiContentType, OpenApiContentSchema>;

@freezed
abstract class OpenApiContentSchema with _$OpenApiContentSchema {
  const OpenApiContentSchema._();

  const factory OpenApiContentSchema({
    @OpenApiSchemaJsonConverter()
    @JsonKey(name: 'schema')
    required OpenApiSchema schema,
  }) = _OpenApiContentSchema;

  factory OpenApiContentSchema.fromJson(Map<String, dynamic> json) =>
      _$OpenApiContentSchemaFromJson(json);
}
