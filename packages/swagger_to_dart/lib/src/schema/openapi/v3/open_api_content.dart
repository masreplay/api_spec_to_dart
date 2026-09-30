import 'package:freezed_annotation/freezed_annotation.dart';
import 'open_api_schema.dart';

part 'open_api_content.freezed.dart';
part 'open_api_content.g.dart';

/// Media type (e.g. `application/json`) → its schema.
typedef OpenApiContent = Map<String, OpenApiContentSchema>;

@freezed
abstract class OpenApiContentSchema with _$OpenApiContentSchema {
  const OpenApiContentSchema._();

  const factory OpenApiContentSchema({
    /// Absent for e.g. `application/pdf: {}`.
    @OpenApiSchemaJsonConverter()
    @JsonKey(name: 'schema')
    OpenApiSchema? schema,
    @JsonKey(name: 'example') Object? example,
  }) = _OpenApiContentSchema;

  factory OpenApiContentSchema.fromJson(Map<String, dynamic> json) =>
      _$OpenApiContentSchemaFromJson(json);
}
