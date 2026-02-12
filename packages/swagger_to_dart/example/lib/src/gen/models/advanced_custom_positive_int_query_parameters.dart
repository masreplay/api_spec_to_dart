/// AdvancedCustomPositiveIntQueryParameters
/// {
///     "properties": {
///         "value": {
///             "type": "integer",
///             "title": "Value"
///         },
///         "value2": {
///             "type": "integer",
///             "title": "Value2"
///         }
///     },
///     "type": "object",
///     "required": [
///         "value",
///         "value2"
///     ]
/// }
library advanced_custom_positive_int_query_parameters;

import 'exports.dart';
part 'advanced_custom_positive_int_query_parameters.freezed.dart';
part 'advanced_custom_positive_int_query_parameters.g.dart'; // AdvancedCustomPositiveIntQueryParameters

@freezed
abstract class AdvancedCustomPositiveIntQueryParameters
    with _$AdvancedCustomPositiveIntQueryParameters {
  const AdvancedCustomPositiveIntQueryParameters._();

  @jsonSerializable
  const factory AdvancedCustomPositiveIntQueryParameters({
    /// value
    @JsonKey(name: AdvancedCustomPositiveIntQueryParameters.valueKey_)
    required int value,

    /// value2
    @JsonKey(name: AdvancedCustomPositiveIntQueryParameters.value2Key_)
    required int value2,
  }) = _AdvancedCustomPositiveIntQueryParameters;

  factory AdvancedCustomPositiveIntQueryParameters.fromJson(
    Map<String, dynamic> json,
  ) => _$AdvancedCustomPositiveIntQueryParametersFromJson(json);

  static const String valueKey_ = r'value';

  static const String value2Key_ = r'value2';
}
