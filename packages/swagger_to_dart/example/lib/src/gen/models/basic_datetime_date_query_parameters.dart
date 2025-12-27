/// BasicDatetimeDateQueryParameters
/// {
///     "properties": {
///         "d": {
///             "type": "string",
///             "format": "date",
///             "title": "D"
///         }
///     },
///     "type": "object",
///     "required": [
///         "d"
///     ]
/// }
library basic_datetime_date_query_parameters;

import 'exports.dart';
part 'basic_datetime_date_query_parameters.freezed.dart';
part 'basic_datetime_date_query_parameters.g.dart'; // BasicDatetimeDateQueryParameters

@freezed
abstract class BasicDatetimeDateQueryParameters
    with _$BasicDatetimeDateQueryParameters {
  const BasicDatetimeDateQueryParameters._();

  @jsonSerializable
  const factory BasicDatetimeDateQueryParameters({
    /// d
    @JsonKey(name: BasicDatetimeDateQueryParameters.dKey_) required DateTime d,
  }) = _BasicDatetimeDateQueryParameters;

  factory BasicDatetimeDateQueryParameters.fromJson(
    Map<String, dynamic> json,
  ) => _$BasicDatetimeDateQueryParametersFromJson(json);

  static const String dKey_ = r'd';
}
