/// BasicDatetimeTimeQueryParameters
/// {
///     "properties": {
///         "t": {
///             "type": "string",
///             "format": "time",
///             "title": "T"
///         }
///     },
///     "type": "object",
///     "required": [
///         "t"
///     ]
/// }
library basic_datetime_time_query_parameters;

import 'exports.dart';
part 'basic_datetime_time_query_parameters.freezed.dart';
part 'basic_datetime_time_query_parameters.g.dart'; // BasicDatetimeTimeQueryParameters

@freezed
abstract class BasicDatetimeTimeQueryParameters
    with _$BasicDatetimeTimeQueryParameters {
  const BasicDatetimeTimeQueryParameters._();

  @jsonSerializable
  const factory BasicDatetimeTimeQueryParameters({
    /// t
    @JsonKey(name: BasicDatetimeTimeQueryParameters.tKey_) required TimeOfDay t,
  }) = _BasicDatetimeTimeQueryParameters;

  factory BasicDatetimeTimeQueryParameters.fromJson(
    Map<String, dynamic> json,
  ) => _$BasicDatetimeTimeQueryParametersFromJson(json);

  static const String tKey_ = r't';
}
