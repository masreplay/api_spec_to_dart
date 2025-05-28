/// BasicDatetimeTimedeltaQueryParameters
/// {
///     "properties": {
///         "td": {
///             "type": "string",
///             "format": "duration",
///             "title": "Td"
///         }
///     },
///     "type": "object"
/// }
library;

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
    @JsonKey(name: BasicDatetimeTimedeltaQueryParameters.tdKey)
    required String td,
  }) = _BasicDatetimeTimedeltaQueryParameters;

  factory BasicDatetimeTimedeltaQueryParameters.fromJson(
    Map<String, dynamic> json,
  ) => _$BasicDatetimeTimedeltaQueryParametersFromJson(json);

  static const String tdKey = r'td';
}
