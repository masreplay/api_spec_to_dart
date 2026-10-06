/// PostmanVariableType
///
/// ```json
/// {
///     "properties": {},
///     "type": "string",
///     "enum": [
///         "string",
///         "boolean",
///         "any",
///         "number"
///     ]
/// }
/// ```
library;

import 'exports.dart';
part 'postman_variable_type.g.dart';

@JsonEnum(alwaysCreate: true)
enum PostmanVariableType {
  @JsonValue('string')
  string,
  @JsonValue('boolean')
  boolean,
  @JsonValue('any')
  any,
  @JsonValue('number')
  number,
  @JsonValue('unknown')
  unknown;

  factory PostmanVariableType.fromJson(String json) =>
      PostmanVariableType.values.firstWhere(
        (e) => e.toJson() == json,
        orElse: () => PostmanVariableType.unknown,
      );

  String toJson() => _$PostmanVariableTypeEnumMap[this]!;
}
