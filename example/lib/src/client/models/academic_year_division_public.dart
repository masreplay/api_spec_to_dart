import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'academic_year_division_public.freezed.dart';
part 'academic_year_division_public.g.dart';

@freezed
class AcademicYearDivisionPublic with _$AcademicYearDivisionPublic {
  const AcademicYearDivisionPublic._();

  @JsonSerializable(converters: convertors)
  const factory AcademicYearDivisionPublic({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'academic_learning_framework_system_id')
    required int academicLearningFrameworkSystemId,
    @JsonKey(name: 'enrolment_start_date') required DateTime enrolmentStartDate,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'enrolment_end_date') required DateTime enrolmentEndDate,
    @JsonKey(name: 'semester_start_date') required DateTime semesterStartDate,
    @JsonKey(name: 'semester_end_date') required DateTime semesterEndDate,
    @JsonKey(name: 'semester_time_period') required int semesterTimePeriod,
    @JsonKey(name: 'period_type') required int periodType,
    @JsonKey(name: 'minimum_gpa_for_success') required num minimumGpaForSuccess,
    @JsonKey(name: 'minimum_course_passing_grade')
    required int minimumCoursePassingGrade,
    @JsonKey(name: 'minimum_number_of_courses_to_pass')
    required int minimumNumberOfCoursesToPass,
    @JsonKey(name: 'minimum_number_of_courses_to_fail')
    required int minimumNumberOfCoursesToFail,
    @JsonKey(name: 'minimum_ects') required num minimumEcts,
    @JsonKey(name: 'maximum_ects') required num maximumEcts,
  }) = _AcademicYearDivisionPublic;

  factory AcademicYearDivisionPublic.fromJson(Map<String, dynamic> json) =>
      _$AcademicYearDivisionPublicFromJson(json);
}
