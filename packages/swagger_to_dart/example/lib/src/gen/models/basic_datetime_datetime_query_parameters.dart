/// BasicDatetimeDatetimeQueryParameters
/// {
///     "properties": {
///         "dt": {
///             "type": "string",
///             "format": "date-time",
///             "title": "Dt"
///         }
///     },
///     "type": "object",
///     "required": [
///         "dt"
///     ]
/// }
library basic_datetime_datetime_query_parameters;

import 'exports.dart';
part 'basic_datetime_datetime_query_parameters.freezed.dart';
part 'basic_datetime_datetime_query_parameters.g.dart'; // BasicDatetimeDatetimeQueryParameters

@freezed
abstract class BasicDatetimeDatetimeQueryParameters
    with _$BasicDatetimeDatetimeQueryParameters {
  const BasicDatetimeDatetimeQueryParameters._();

  @jsonSerializable
  const factory BasicDatetimeDatetimeQueryParameters({
    /// dt
    @JsonKey(name: BasicDatetimeDatetimeQueryParameters.dtKey_)
    required DateTime dt,
  }) = _BasicDatetimeDatetimeQueryParameters;

  factory BasicDatetimeDatetimeQueryParameters.fromJson(
    Map<String, dynamic> json,
  ) => _$BasicDatetimeDatetimeQueryParametersFromJson(json);

  static const String dtKey_ = r'dt';
}
