/// ValidationConstrainedFloatQueryParameters
/// {
///     "properties": {
///         "value": {
///             "type": "number",
///             "description": "Float between 0.0 and 1.0",
///             "title": "Value"
///         }
///     },
///     "type": "object",
///     "required": [
///         "value"
///     ]
/// }
library validation_constrained_float_query_parameters;

import 'exports.dart';
part 'validation_constrained_float_query_parameters.freezed.dart';
part 'validation_constrained_float_query_parameters.g.dart'; // ValidationConstrainedFloatQueryParameters

@freezed
abstract class ValidationConstrainedFloatQueryParameters
    with _$ValidationConstrainedFloatQueryParameters {
  const ValidationConstrainedFloatQueryParameters._();

  @jsonSerializable
  const factory ValidationConstrainedFloatQueryParameters({
    /// value
    @JsonKey(name: ValidationConstrainedFloatQueryParameters.valueKey_)
    required double value,
  }) = _ValidationConstrainedFloatQueryParameters;

  factory ValidationConstrainedFloatQueryParameters.fromJson(
    Map<String, dynamic> json,
  ) => _$ValidationConstrainedFloatQueryParametersFromJson(json);

  static const String valueKey_ = r'value';
}
