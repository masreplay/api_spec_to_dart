import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'student_selected_courses_public.freezed.dart';
part 'student_selected_courses_public.g.dart';

///StudentSelectedCoursesPublic

@freezed
class StudentSelectedCoursesPublic with _$StudentSelectedCoursesPublic {
  const StudentSelectedCoursesPublic._();

  @JsonSerializable(converters: convertors)
  const factory StudentSelectedCoursesPublic({
    /// Student Id
    @JsonKey(name: 'student_id') required int studentId,

    /// Final Grade
    @JsonKey(name: 'final_grade') required num finalGrade,

    /// Course Result
    @JsonKey(name: 'course_result') required int courseResult,

    /// Attempt
    @JsonKey(name: 'attempt') required int attempt,

    /// Selected Date Time
    @JsonKey(name: 'selected_date_time') required DateTime selectedDateTime,

    /// Student Course Status
    @JsonKey(name: 'student_course_status') required int studentCourseStatus,

    /// Academic Terms
    @JsonKey(name: 'academic_terms') required int academicTerms,

    /// Grade
    @JsonKey(name: 'grade') required int grade,

    /// Study Year Id
    @JsonKey(name: 'study_year_id') required int studyYearId,

    /// Course Distribution Id
    @JsonKey(name: 'course_distribution_id') required int courseDistributionId,

    /// Creation Time
    @JsonKey(name: 'creation_time') required DateTime creationTime,

    /// Course Id
    @JsonKey(name: 'course_id') required int courseId,

    /// Student Academic Status Id
    @JsonKey(name: 'student_academic_status_id')
    required int studentAcademicStatusId,

    /// Id
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'course') required CourseTable? course,
    @JsonKey(name: 'course_distribution')
    required CourseDistributionsTable? courseDistribution,
    @Default(SelectedCourseResultEnum.value1)
    @JsonKey(name: 'result')
    SelectedCourseResultEnum result,
  }) = _StudentSelectedCoursesPublic;

  factory StudentSelectedCoursesPublic.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$StudentSelectedCoursesPublicFromJson(
        json,
      );
}
