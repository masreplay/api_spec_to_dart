import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'basic_datetime_timedelta_queries.freezed.dart';
part 'basic_datetime_timedelta_queries.g.dart';

/// basicDatetimeTimedeltaQueries
@freezed
abstract class BasicDatetimeTimedeltaQueries
    with _$BasicDatetimeTimedeltaQueries {
  const BasicDatetimeTimedeltaQueries._();

  static const String tdKey = 'td';

  @JsonSerializable(converters: convertors)
  const factory BasicDatetimeTimedeltaQueries({
    /// td
    @JsonKey(name: BasicDatetimeTimedeltaQueries.tdKey) required String td,
  }) = _BasicDatetimeTimedeltaQueries;

  factory BasicDatetimeTimedeltaQueries.fromJson(Map<String, dynamic> json) =>
      _$BasicDatetimeTimedeltaQueriesFromJson(json);
}
