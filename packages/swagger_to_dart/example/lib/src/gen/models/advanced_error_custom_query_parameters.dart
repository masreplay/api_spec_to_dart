/// AdvancedErrorCustomQueryParameters
/// {
///     "properties": {
///         "code": {
///             "type": "integer",
///             "description": "HTTP error code to simulate",
///             "title": "Code"
///         }
///     },
///     "type": "object",
///     "required": [
///         "code"
///     ]
/// }
library advanced_error_custom_query_parameters;

import 'exports.dart';
part 'advanced_error_custom_query_parameters.freezed.dart';
part 'advanced_error_custom_query_parameters.g.dart'; // AdvancedErrorCustomQueryParameters

@freezed
abstract class AdvancedErrorCustomQueryParameters
    with _$AdvancedErrorCustomQueryParameters {
  const AdvancedErrorCustomQueryParameters._();

  @jsonSerializable
  const factory AdvancedErrorCustomQueryParameters({
    /// code
    @JsonKey(name: AdvancedErrorCustomQueryParameters.codeKey_)
    required int code,
  }) = _AdvancedErrorCustomQueryParameters;

  factory AdvancedErrorCustomQueryParameters.fromJson(
    Map<String, dynamic> json,
  ) => _$AdvancedErrorCustomQueryParametersFromJson(json);

  static const String codeKey_ = r'code';
}
