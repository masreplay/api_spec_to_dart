/// AdvancedUnionOptionalQueryParameters
/// {
///     "properties": {
///         "value": {
///             "anyOf": [
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
///     "type": "object",
///     "required": []
/// }
library advanced_union_optional_query_parameters;

import 'exports.dart';
part 'advanced_union_optional_query_parameters.freezed.dart';
part 'advanced_union_optional_query_parameters.g.dart'; // AdvancedUnionOptionalQueryParameters

@freezed
abstract class AdvancedUnionOptionalQueryParameters
    with _$AdvancedUnionOptionalQueryParameters {
  const AdvancedUnionOptionalQueryParameters._();

  @jsonSerializable
  const factory AdvancedUnionOptionalQueryParameters({
    /// value
    @JsonKey(name: AdvancedUnionOptionalQueryParameters.valueKey_)
    String? value,
  }) = _AdvancedUnionOptionalQueryParameters;

  factory AdvancedUnionOptionalQueryParameters.fromJson(
    Map<String, dynamic> json,
  ) => _$AdvancedUnionOptionalQueryParametersFromJson(json);

  static const String valueKey_ = r'value';
}
