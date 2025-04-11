import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'basic_datetime_datetime_queries.freezed.dart';
part 'basic_datetime_datetime_queries.g.dart';

/// basicDatetimeDatetimeQueries
@freezed
abstract class BasicDatetimeDatetimeQueries
    with _$BasicDatetimeDatetimeQueries {
  const BasicDatetimeDatetimeQueries._();

  static const String dtKey = 'dt';

  @JsonSerializable(converters: convertors)
  const factory BasicDatetimeDatetimeQueries({
    /// dt
    @JsonKey(name: BasicDatetimeDatetimeQueries.dtKey) required DateTime dt,
  }) = _BasicDatetimeDatetimeQueries;

  factory BasicDatetimeDatetimeQueries.fromJson(Map<String, dynamic> json) =>
      _$BasicDatetimeDatetimeQueriesFromJson(json);
}
