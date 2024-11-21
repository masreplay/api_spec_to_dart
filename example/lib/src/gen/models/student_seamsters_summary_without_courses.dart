import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'student_seamsters_summary_without_courses.freezed.dart';
part 'student_seamsters_summary_without_courses.g.dart';

@freezed
class StudentSeamstersSummaryWithoutCourses
    with _$StudentSeamstersSummaryWithoutCourses {
  const StudentSeamstersSummaryWithoutCourses._();

  @JsonSerializable(converters: convertors)
  const factory StudentSeamstersSummaryWithoutCourses({
    /// Semesters
    @JsonKey(name: 'semesters') required List<Summary>? semesters,
    @JsonKey(name: 'year') required StudyYearPublic? year,
  }) = _StudentSeamstersSummaryWithoutCourses;

  factory StudentSeamstersSummaryWithoutCourses.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$StudentSeamstersSummaryWithoutCoursesFromJson(json);
}
