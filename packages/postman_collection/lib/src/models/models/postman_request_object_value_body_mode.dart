/// PostmanRequestObjectValueBodyMode
///
/// ```json
/// {
///     "properties": {},
///     "type": "string",
///     "enum": [
///         "raw",
///         "urlencoded",
///         "formdata",
///         "file",
///         "graphql"
///     ]
/// }
/// ```
library;

import 'exports.dart';
part 'postman_request_object_value_body_mode.g.dart';

@JsonEnum(alwaysCreate: true)
enum PostmanRequestObjectValueBodyMode {
  @JsonValue('raw')
  raw,
  @JsonValue('urlencoded')
  urlencoded,
  @JsonValue('formdata')
  formdata,
  @JsonValue('file')
  file,
  @JsonValue('graphql')
  graphql,
  @JsonValue('unknown')
  unknown;

  factory PostmanRequestObjectValueBodyMode.fromJson(String json) =>
      PostmanRequestObjectValueBodyMode.values.firstWhere(
        (e) => e.toJson() == json,
        orElse: () => PostmanRequestObjectValueBodyMode.unknown,
      );

  String toJson() => _$PostmanRequestObjectValueBodyModeEnumMap[this]!;
}
