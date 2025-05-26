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
///     "type": "object"
/// }
library;

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
    @JsonKey(name: AdvancedCustomPositiveIntQueryParameters.valueKey)
    required int value,

    /// value2
    @JsonKey(name: AdvancedCustomPositiveIntQueryParameters.value2Key)
    required int value2,
  }) = _AdvancedCustomPositiveIntQueryParameters;

  factory AdvancedCustomPositiveIntQueryParameters.fromJson(
    Map<String, dynamic> json,
  ) => _$AdvancedCustomPositiveIntQueryParametersFromJson(json);

  static const String valueKey = "value";

  static const String value2Key = "value2";
}
