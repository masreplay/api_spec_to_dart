// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'academic_year_division_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AcademicYearDivisionPublicImpl _$$AcademicYearDivisionPublicImplFromJson(
        Map<String, dynamic> json) =>
    _$AcademicYearDivisionPublicImpl(
      id: (json['id'] as num).toInt(),
      academicLearningFrameworkSystemId:
          (json['academic_learning_framework_system_id'] as num).toInt(),
      enrolmentStartDate:
          DateTime.parse(json['enrolment_start_date'] as String),
      name: json['name'] as String,
      enrolmentEndDate: DateTime.parse(json['enrolment_end_date'] as String),
      semesterStartDate: DateTime.parse(json['semester_start_date'] as String),
      semesterEndDate: DateTime.parse(json['semester_end_date'] as String),
      semesterTimePeriod: (json['semester_time_period'] as num).toInt(),
      periodType: (json['period_type'] as num).toInt(),
      minimumGpaForSuccess: json['minimum_gpa_for_success'] as num,
      minimumCoursePassingGrade:
          (json['minimum_course_passing_grade'] as num).toInt(),
      minimumNumberOfCoursesToPass:
          (json['minimum_number_of_courses_to_pass'] as num).toInt(),
      minimumNumberOfCoursesToFail:
          (json['minimum_number_of_courses_to_fail'] as num).toInt(),
      minimumEcts: json['minimum_ects'] as num,
      maximumEcts: json['maximum_ects'] as num,
    );

Map<String, dynamic> _$$AcademicYearDivisionPublicImplToJson(
        _$AcademicYearDivisionPublicImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'academic_learning_framework_system_id':
          instance.academicLearningFrameworkSystemId,
      'enrolment_start_date': instance.enrolmentStartDate.toIso8601String(),
      'name': instance.name,
      'enrolment_end_date': instance.enrolmentEndDate.toIso8601String(),
      'semester_start_date': instance.semesterStartDate.toIso8601String(),
      'semester_end_date': instance.semesterEndDate.toIso8601String(),
      'semester_time_period': instance.semesterTimePeriod,
      'period_type': instance.periodType,
      'minimum_gpa_for_success': instance.minimumGpaForSuccess,
      'minimum_course_passing_grade': instance.minimumCoursePassingGrade,
      'minimum_number_of_courses_to_pass':
          instance.minimumNumberOfCoursesToPass,
      'minimum_number_of_courses_to_fail':
          instance.minimumNumberOfCoursesToFail,
      'minimum_ects': instance.minimumEcts,
      'maximum_ects': instance.maximumEcts,
    };
