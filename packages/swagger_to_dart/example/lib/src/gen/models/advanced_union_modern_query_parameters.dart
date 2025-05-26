/// AdvancedUnionModernQueryParameters
/// {
///     "properties": {
///         "value": {
///             "anyOf": [
///                 {
///                     "type": "integer"
///                 },
///                 {
///                     "type": "string"
///                 },
///                 {
///                     "type": "null"
///                 }
///             ],
///             "title": "Value"
///         }
///     },
///     "type": "object"
/// }
library;

import 'exports.dart';
part 'advanced_union_modern_query_parameters.freezed.dart';
part 'advanced_union_modern_query_parameters.g.dart'; // AdvancedUnionModernQueryParameters

@freezed
abstract class AdvancedUnionModernQueryParameters
    with _$AdvancedUnionModernQueryParameters {
  const AdvancedUnionModernQueryParameters._();

  @jsonSerializable
  const factory AdvancedUnionModernQueryParameters({
    /// value
    @JsonKey(name: AdvancedUnionModernQueryParameters.valueKey)
    required dynamic value,
  }) = _AdvancedUnionModernQueryParameters;

  factory AdvancedUnionModernQueryParameters.fromJson(
    Map<String, dynamic> json,
  ) => _$AdvancedUnionModernQueryParametersFromJson(json);

  static const String valueKey = "value";
}
