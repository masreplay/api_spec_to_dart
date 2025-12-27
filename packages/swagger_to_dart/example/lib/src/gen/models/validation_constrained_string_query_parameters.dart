/// ValidationConstrainedStringQueryParameters
/// {
///     "properties": {
///         "value": {
///             "type": "string",
///             "maxLength": 50,
///             "minLength": 3,
///             "description": "String between 3-50 chars, alphanumeric with hyphens and underscores",
///             "pattern": "^[a-zA-Z0-9_-]+$",
///             "title": "Value"
///         }
///     },
///     "type": "object",
///     "required": [
///         "value"
///     ]
/// }
library validation_constrained_string_query_parameters;

import 'exports.dart';
part 'validation_constrained_string_query_parameters.freezed.dart';
part 'validation_constrained_string_query_parameters.g.dart'; // ValidationConstrainedStringQueryParameters

@freezed
abstract class ValidationConstrainedStringQueryParameters
    with _$ValidationConstrainedStringQueryParameters {
  const ValidationConstrainedStringQueryParameters._();

  @jsonSerializable
  const factory ValidationConstrainedStringQueryParameters({
    /// value
    @JsonKey(name: ValidationConstrainedStringQueryParameters.valueKey_)
    required String value,
  }) = _ValidationConstrainedStringQueryParameters;

  factory ValidationConstrainedStringQueryParameters.fromJson(
    Map<String, dynamic> json,
  ) => _$ValidationConstrainedStringQueryParametersFromJson(json);

  static const String valueKey_ = r'value';
}
