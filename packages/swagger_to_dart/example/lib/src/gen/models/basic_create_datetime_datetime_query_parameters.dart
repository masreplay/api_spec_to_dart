/// BasicCreateDatetimeDatetimeQueryParameters
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
library basic_create_datetime_datetime_query_parameters;

import 'exports.dart';
part 'basic_create_datetime_datetime_query_parameters.freezed.dart';
part 'basic_create_datetime_datetime_query_parameters.g.dart'; // BasicCreateDatetimeDatetimeQueryParameters

@freezed
abstract class BasicCreateDatetimeDatetimeQueryParameters
    with _$BasicCreateDatetimeDatetimeQueryParameters {
  const BasicCreateDatetimeDatetimeQueryParameters._();

  @jsonSerializable
  const factory BasicCreateDatetimeDatetimeQueryParameters({
    /// dt
    @JsonKey(name: BasicCreateDatetimeDatetimeQueryParameters.dtKey_)
    required DateTime dt,
  }) = _BasicCreateDatetimeDatetimeQueryParameters;

  factory BasicCreateDatetimeDatetimeQueryParameters.fromJson(
    Map<String, dynamic> json,
  ) => _$BasicCreateDatetimeDatetimeQueryParametersFromJson(json);

  static const String dtKey_ = r'dt';
}
