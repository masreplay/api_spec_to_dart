import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'student_semesters_read_semesters_queries.freezed.dart';
part 'student_semesters_read_semesters_queries.g.dart';

///studentSemestersReadSemestersQueries

@freezed
class StudentSemestersReadSemestersQueries
    with _$StudentSemestersReadSemestersQueries {
  const StudentSemestersReadSemestersQueries._();

  @JsonSerializable(converters: convertors)
  const factory StudentSemestersReadSemestersQueries({
    @Default(SemesterFilter.all) @JsonKey(name: 'filter') SemesterFilter filter,
  }) = _StudentSemestersReadSemestersQueries;

  factory StudentSemestersReadSemestersQueries.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$StudentSemestersReadSemestersQueriesFromJson(json);
}
