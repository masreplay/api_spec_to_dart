import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'basic_datetime_time_queries.freezed.dart';
part 'basic_datetime_time_queries.g.dart';

/// basicDatetimeTimeQueries
@freezed
abstract class BasicDatetimeTimeQueries with _$BasicDatetimeTimeQueries {
  const BasicDatetimeTimeQueries._();

  static const String tKey = 't';

  @JsonSerializable(converters: convertors)
  const factory BasicDatetimeTimeQueries({
    /// t
    @JsonKey(name: BasicDatetimeTimeQueries.tKey) required String t,
  }) = _BasicDatetimeTimeQueries;

  factory BasicDatetimeTimeQueries.fromJson(Map<String, dynamic> json) =>
      _$BasicDatetimeTimeQueriesFromJson(json);
}
