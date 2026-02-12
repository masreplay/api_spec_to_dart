/// BasicDatetimeTimedeltaQueryParameters
/// {
///     "properties": {
///         "td": {
///             "type": "string",
///             "format": "duration",
///             "title": "Td"
///         }
///     },
///     "type": "object",
///     "required": [
///         "td"
///     ]
/// }
library basic_datetime_timedelta_query_parameters;

import 'exports.dart';
part 'basic_datetime_timedelta_query_parameters.freezed.dart';
part 'basic_datetime_timedelta_query_parameters.g.dart'; // BasicDatetimeTimedeltaQueryParameters

@freezed
abstract class BasicDatetimeTimedeltaQueryParameters
    with _$BasicDatetimeTimedeltaQueryParameters {
  const BasicDatetimeTimedeltaQueryParameters._();

  @jsonSerializable
  const factory BasicDatetimeTimedeltaQueryParameters({
    /// td
    @JsonKey(name: BasicDatetimeTimedeltaQueryParameters.tdKey_)
    required TimeOfDay td,
  }) = _BasicDatetimeTimedeltaQueryParameters;

  factory BasicDatetimeTimedeltaQueryParameters.fromJson(
    Map<String, dynamic> json,
  ) => _$BasicDatetimeTimedeltaQueryParametersFromJson(json);

  static const String tdKey_ = r'td';
}
