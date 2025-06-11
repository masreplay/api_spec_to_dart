/// AdvancedUnionSimpleQueryParameters
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
///                     "type": "boolean"
///                 }
///             ],
///             "title": "Value"
///         }
///     },
///     "type": "object"
/// }
library;

import 'exports.dart';
part 'advanced_union_simple_query_parameters.freezed.dart';
part 'advanced_union_simple_query_parameters.g.dart'; // AdvancedUnionSimpleQueryParameters

@freezed
abstract class AdvancedUnionSimpleQueryParameters
    with _$AdvancedUnionSimpleQueryParameters {
  const AdvancedUnionSimpleQueryParameters._();

  @jsonSerializable
  const factory AdvancedUnionSimpleQueryParameters({
    /// value
    @JsonKey(name: AdvancedUnionSimpleQueryParameters.valueKey)
    required dynamic value,
  }) = _AdvancedUnionSimpleQueryParameters;

  factory AdvancedUnionSimpleQueryParameters.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$AdvancedUnionSimpleQueryParametersFromJson(json);

  static const String valueKey = r'value';
}
