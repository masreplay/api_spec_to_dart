/// DateRange
/// {
///     "properties": {
///         "start": {
///             "type": "string",
///             "format": "date"
///         },
///         "end": {
///             "type": "string",
///             "format": "date"
///         }
///     },
///     "type": "object",
///     "required": [
///         "end",
///         "start"
///     ],
///     "additionalProperties": false
/// }
library date_range;

import 'exports.dart';
part 'date_range.freezed.dart';
part 'date_range.g.dart'; // DateRange

@freezed
abstract class DateRange with _$DateRange {
  const DateRange._();

  @jsonSerializable
  const factory DateRange({
    /// start
    @JsonKey(name: DateRange.startKey_) required DateTime start,

    /// end
    @JsonKey(name: DateRange.endKey_) required DateTime end,
  }) = _DateRange;

  factory DateRange.fromJson(Map<String, dynamic> json) =>
      _$DateRangeFromJson(json);

  static const String startKey_ = r'start';

  static const String endKey_ = r'end';
}
