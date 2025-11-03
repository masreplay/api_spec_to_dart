import 'package:freezed_annotation/freezed_annotation.dart';
import 'open_api_schema.dart';

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

  factory OpenApiContentType.fromJson(String value) {
    return _$OpenApiContentTypeEnumMap.entries
        .firstWhere((e) => e.value == value)
        .key;
  }

  String toJson() => _$OpenApiContentTypeEnumMap[this]!;
}

typedef OpenApiContent = Map<String, OpenApiContentSchema>;

@freezed
abstract class OpenApiContentSchema with _$OpenApiContentSchema {
  const OpenApiContentSchema._();

  const factory OpenApiContentSchema({
    @OpenApiSchemaJsonConverter()
    @JsonKey(name: 'schema')
    required OpenApiSchema schema,
    @JsonKey(name: 'example') Object? example,
  }) = _OpenApiContentSchema;

  factory OpenApiContentSchema.fromJson(Map<String, dynamic> json) =>
      _$OpenApiContentSchemaFromJson(json);
}
