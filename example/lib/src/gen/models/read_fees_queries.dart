import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'read_fees_queries.freezed.dart';
part 'read_fees_queries.g.dart';

@freezed
class ReadFeesQueries with _$ReadFeesQueries {
  const ReadFeesQueries._();

  @JsonSerializable(converters: convertors)
  const factory ReadFeesQueries({
    /// Fees Type Id
    @JsonKey(name: 'feesTypeId') required int? feesTypeId,

    /// Study Year Id
    @JsonKey(name: 'studyYearId') required int? studyYearId,

    /// Page
    @Default(1) @JsonKey(name: 'page') required int page,

    /// Per Page
    @Default(10) @JsonKey(name: 'perPage') required int perPage,
  }) = _ReadFeesQueries;

  factory ReadFeesQueries.fromJson(Map<String, dynamic> json) =>
      _$ReadFeesQueriesFromJson(json);
}
