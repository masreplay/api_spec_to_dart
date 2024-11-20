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
    @JsonKey(name: 'student_id')

    /// Student Id
    required int studentId,
    @JsonKey(name: 'final_grade')

    /// Final Grade
    required num finalGrade,
    @JsonKey(name: 'course_result')

    /// Course Result
    required int courseResult,
    @JsonKey(name: 'attempt')

    /// Attempt
    required int attempt,
    @JsonKey(name: 'selected_date_time')

    /// Selected Date Time
    required DateTime selectedDateTime,
    @JsonKey(name: 'student_course_status')

    /// Student Course Status
    required int studentCourseStatus,
    @JsonKey(name: 'academic_terms')

    /// Academic Terms
    required int academicTerms,
    @JsonKey(name: 'grade')

    /// Grade
    required int grade,
    @JsonKey(name: 'study_year_id')

    /// Study Year Id
    required int studyYearId,
    @JsonKey(name: 'course_distribution_id')

    /// Course Distribution Id
    required int courseDistributionId,
    @JsonKey(name: 'creation_time')

    /// Creation Time
    required DateTime creationTime,
    @JsonKey(name: 'course_id')

    /// Course Id
    required int courseId,
    @JsonKey(name: 'student_academic_status_id')

    /// Student Academic Status Id
    required int studentAcademicStatusId,
    @JsonKey(name: 'id')

    /// Id
    required int id,
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
