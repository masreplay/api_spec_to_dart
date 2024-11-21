// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CoursePublicImpl _$$CoursePublicImplFromJson(Map<String, dynamic> json) =>
    _$CoursePublicImpl(
      courseCode: json['course_code'] as String,
      courseClassifications: (json['course_classifications'] as num?)?.toInt(),
      totalCredits: (json['total_credits'] as num).toInt(),
      courseResultType: (json['course_result_type'] as num).toInt(),
      highestGrade: (json['highest_grade'] as num).toInt(),
      lowestGrade: (json['lowest_grade'] as num).toInt(),
      prerequisiteHours: (json['prerequisite_hours'] as num?)?.toInt(),
      courseVersion: json['course_version'] as String?,
      courseStatus: json['course_status'] == null
          ? null
          : StudentCourseStatusEnum.fromJson(
              json['course_status'] as Map<String, dynamic>),
      courseFees: (json['course_fees'] as num).toInt(),
      courseDistributionLevel:
          (json['course_distribution_level'] as num).toInt(),
      id: (json['id'] as num).toInt(),
      name: json['name'] as String?,
      courseStaffs: json['course_staffs'] as List<dynamic>?,
      seamster: json['seamster'] == null
          ? null
          : AcademicYearDivisionPublic.fromJson(
              json['seamster'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CoursePublicImplToJson(_$CoursePublicImpl instance) =>
    <String, dynamic>{
      'course_code': instance.courseCode,
      'course_classifications': instance.courseClassifications,
      'total_credits': instance.totalCredits,
      'course_result_type': instance.courseResultType,
      'highest_grade': instance.highestGrade,
      'lowest_grade': instance.lowestGrade,
      'prerequisite_hours': instance.prerequisiteHours,
      'course_version': instance.courseVersion,
      'course_status': instance.courseStatus,
      'course_fees': instance.courseFees,
      'course_distribution_level': instance.courseDistributionLevel,
      'id': instance.id,
      'name': instance.name,
      'course_staffs': instance.courseStaffs,
      'seamster': instance.seamster,
    };
