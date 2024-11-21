import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'academic_year_division_public.freezed.dart';
part 'academic_year_division_public.g.dart';

///AcademicYearDivisionPublic

@freezed
class AcademicYearDivisionPublic with _$AcademicYearDivisionPublic {
  const AcademicYearDivisionPublic._();

  @JsonSerializable(converters: convertors)
  const factory AcademicYearDivisionPublic({
    /// Id
    @JsonKey(name: 'id') required int id,

    /// Academic Learning Framework System Id
    @JsonKey(name: 'academic_learning_framework_system_id')
    required int academicLearningFrameworkSystemId,

    /// Enrolment Start Date
    @JsonKey(name: 'enrolment_start_date') required DateTime enrolmentStartDate,

    /// Name
    @JsonKey(name: 'name') required String name,

    /// Enrolment End Date
    @JsonKey(name: 'enrolment_end_date') required DateTime enrolmentEndDate,

    /// Semester Start Date
    @JsonKey(name: 'semester_start_date') required DateTime semesterStartDate,

    /// Semester End Date
    @JsonKey(name: 'semester_end_date') required DateTime semesterEndDate,

    /// Semester Time Period
    @JsonKey(name: 'semester_time_period') required int semesterTimePeriod,

    /// Period Type
    @JsonKey(name: 'period_type') required int periodType,

    /// Minimum Gpa For Success
    @JsonKey(name: 'minimum_gpa_for_success') required num minimumGpaForSuccess,

    /// Minimum Course Passing Grade
    @JsonKey(name: 'minimum_course_passing_grade')
    required int minimumCoursePassingGrade,

    /// Minimum Number Of Courses To Pass
    @JsonKey(name: 'minimum_number_of_courses_to_pass')
    required int minimumNumberOfCoursesToPass,

    /// Minimum Number Of Courses To Fail
    @JsonKey(name: 'minimum_number_of_courses_to_fail')
    required int minimumNumberOfCoursesToFail,

    /// Minimum Ects
    @JsonKey(name: 'minimum_ects') required num minimumEcts,

    /// Maximum Ects
    @JsonKey(name: 'maximum_ects') required num maximumEcts,
  }) = _AcademicYearDivisionPublic;

  factory AcademicYearDivisionPublic.fromJson(Map<String, dynamic> json) =>
      _$AcademicYearDivisionPublicFromJson(json);
}
