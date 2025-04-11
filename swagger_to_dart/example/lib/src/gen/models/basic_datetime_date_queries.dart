import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'basic_datetime_date_queries.freezed.dart';
part 'basic_datetime_date_queries.g.dart';

/// basicDatetimeDateQueries
@freezed
abstract class BasicDatetimeDateQueries with _$BasicDatetimeDateQueries {
  const BasicDatetimeDateQueries._();

  static const String dKey = 'd';

  @JsonSerializable(converters: convertors)
  const factory BasicDatetimeDateQueries({
    /// d
    @JsonKey(name: BasicDatetimeDateQueries.dKey) required DateTime d,
  }) = _BasicDatetimeDateQueries;

  factory BasicDatetimeDateQueries.fromJson(Map<String, dynamic> json) =>
      _$BasicDatetimeDateQueriesFromJson(json);
}
