import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import './models.dart';

part 'student_selected_courses_public.freezed.dart';
part 'student_selected_courses_public.g.dart';

@freezed
class StudentSelectedCoursesPublic with _$StudentSelectedCoursesPublic {
  const StudentSelectedCoursesPublic._();

  @JsonSerializable(converters: convertors)
  const factory StudentSelectedCoursesPublic({
    @JsonKey(name: 'student_id') required int studentId,
    @JsonKey(name: 'final_grade') required num finalGrade,
    @JsonKey(name: 'course_result') required int courseResult,
    @JsonKey(name: 'attempt') required int attempt,
    @JsonKey(name: 'selected_date_time') required DateTime selectedDateTime,
    @JsonKey(name: 'student_course_status') required int studentCourseStatus,
    @JsonKey(name: 'academic_terms') required int academicTerms,
    @JsonKey(name: 'grade') required int grade,
    @JsonKey(name: 'study_year_id') required int studyYearId,
    @JsonKey(name: 'course_distribution_id') required int courseDistributionId,
    @JsonKey(name: 'creation_time') required DateTime creationTime,
    @JsonKey(name: 'course_id') required int courseId,
    @JsonKey(name: 'student_academic_status_id')
    required int studentAcademicStatusId,
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'course') required CourseTable? course,
    @JsonKey(name: 'course_distribution')
    required CourseDistributionsTable? courseDistribution,
    @Default(1)
    @JsonKey(name: 'result')
    required SelectedCourseResultEnum result,
  }) = _StudentSelectedCoursesPublic;

  factory StudentSelectedCoursesPublic.fromJson(Map<String, dynamic> json) =>
      _$StudentSelectedCoursesPublicFromJson(json);
}
