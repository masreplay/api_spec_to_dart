import 'package:freezed_annotation/freezed_annotation.dart';

import './models.dart';

part 'student_seamsters_summary_without_courses.freezed.dart';
part 'student_seamsters_summary_without_courses.g.dart';

@freezed
class StudentSeamstersSummaryWithoutCourses
    with _$StudentSeamstersSummaryWithoutCourses {
  const factory StudentSeamstersSummaryWithoutCourses({
    @JsonKey(name: 'semesters') required List? semesters,
    @JsonKey(name: 'year') required StudyYearPublic? year,
  }) = _StudentSeamstersSummaryWithoutCourses;

  factory StudentSeamstersSummaryWithoutCourses.fromJson(
          Map<String, dynamic> json) =>
      _$StudentSeamstersSummaryWithoutCoursesFromJson(json);
}
