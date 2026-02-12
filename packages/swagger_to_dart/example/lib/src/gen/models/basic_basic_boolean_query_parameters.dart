/// BasicBasicBooleanQueryParameters
/// {
///     "properties": {
///         "flag": {
///             "type": "boolean",
///             "default": false,
///             "title": "Flag"
///         }
///     },
///     "type": "object",
///     "required": []
/// }
library basic_basic_boolean_query_parameters;

import 'exports.dart';
part 'basic_basic_boolean_query_parameters.freezed.dart';
part 'basic_basic_boolean_query_parameters.g.dart'; // BasicBasicBooleanQueryParameters

@freezed
abstract class BasicBasicBooleanQueryParameters
    with _$BasicBasicBooleanQueryParameters {
  const BasicBasicBooleanQueryParameters._();

  @jsonSerializable
  const factory BasicBasicBooleanQueryParameters({
    /// flag
    @Default(false)
    @JsonKey(name: BasicBasicBooleanQueryParameters.flagKey_)
    bool flag,
  }) = _BasicBasicBooleanQueryParameters;

  factory BasicBasicBooleanQueryParameters.fromJson(
    Map<String, dynamic> json,
  ) => _$BasicBasicBooleanQueryParametersFromJson(json);

  static const String flagKey_ = r'flag';
}
