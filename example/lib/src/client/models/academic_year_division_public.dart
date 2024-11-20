import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'academic_year_division_public.freezed.dart';
part 'academic_year_division_public.g.dart';

@freezed
class AcademicYearDivisionPublic with _$AcademicYearDivisionPublic {
  const AcademicYearDivisionPublic._();

  @JsonSerializable(converters: convertors)
  const factory AcademicYearDivisionPublic({
    @JsonKey(name: 'id')

    /// Id
    required int id,
    @JsonKey(name: 'academic_learning_framework_system_id')

    /// Academic Learning Framework System Id
    required int academicLearningFrameworkSystemId,
    @JsonKey(name: 'enrolment_start_date')

    /// Enrolment Start Date
    required DateTime enrolmentStartDate,
    @JsonKey(name: 'name')

    /// Name
    required String name,
    @JsonKey(name: 'enrolment_end_date')

    /// Enrolment End Date
    required DateTime enrolmentEndDate,
    @JsonKey(name: 'semester_start_date')

    /// Semester Start Date
    required DateTime semesterStartDate,
    @JsonKey(name: 'semester_end_date')

    /// Semester End Date
    required DateTime semesterEndDate,
    @JsonKey(name: 'semester_time_period')

    /// Semester Time Period
    required int semesterTimePeriod,
    @JsonKey(name: 'period_type')

    /// Period Type
    required int periodType,
    @JsonKey(name: 'minimum_gpa_for_success')

    /// Minimum Gpa For Success
    required num minimumGpaForSuccess,
    @JsonKey(name: 'minimum_course_passing_grade')

    /// Minimum Course Passing Grade
    required int minimumCoursePassingGrade,
    @JsonKey(name: 'minimum_number_of_courses_to_pass')

    /// Minimum Number Of Courses To Pass
    required int minimumNumberOfCoursesToPass,
    @JsonKey(name: 'minimum_number_of_courses_to_fail')

    /// Minimum Number Of Courses To Fail
    required int minimumNumberOfCoursesToFail,
    @JsonKey(name: 'minimum_ects')

    /// Minimum Ects
    required num minimumEcts,
    @JsonKey(name: 'maximum_ects')

    /// Maximum Ects
    required num maximumEcts,
  }) = _AcademicYearDivisionPublic;

  factory AcademicYearDivisionPublic.fromJson(Map<String, dynamic> json) =>
      _$AcademicYearDivisionPublicFromJson(json);
}
