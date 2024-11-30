import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'student_fees_read_fees_queries.freezed.dart';
part 'student_fees_read_fees_queries.g.dart';

///studentFeesReadFeesQueries

@freezed
class StudentFeesReadFeesQueries with _$StudentFeesReadFeesQueries {
  const StudentFeesReadFeesQueries._();

  @JsonSerializable(converters: convertors)
  const factory StudentFeesReadFeesQueries({
    /// Fees Type Id
    @JsonKey(name: 'feesTypeId') required int? feesTypeId,

    /// Study Year Id
    @JsonKey(name: 'studyYearId') required int? studyYearId,

    /// Page
    @Default(1) @JsonKey(name: 'page') int page,

    /// Per Page
    @Default(10) @JsonKey(name: 'perPage') int perPage,
  }) = _StudentFeesReadFeesQueries;

  factory StudentFeesReadFeesQueries.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$StudentFeesReadFeesQueriesFromJson(
        json,
      );
}
