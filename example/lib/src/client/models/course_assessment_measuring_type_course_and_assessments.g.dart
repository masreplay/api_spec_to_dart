// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_assessment_measuring_type_course_and_assessments.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourseAssessmentMeasuringTypeCourseAndAssessmentsImpl
    _$$CourseAssessmentMeasuringTypeCourseAndAssessmentsImplFromJson(
            Map<String, dynamic> json) =>
        _$CourseAssessmentMeasuringTypeCourseAndAssessmentsImpl(
          id: (json['id'] as num?)?.toInt(),
          title: json['title'] as String?,
          date: json['date'] == null
              ? null
              : DateTime.parse(json['date'] as String),
          type: json['type'] == null
              ? null
              : AssignmentTypeEnum.fromJson(
                  json['type'] as Map<String, dynamic>),
          status: json['status'] == null
              ? null
              : AssignmentClassificationEnum.fromJson(
                  json['status'] as Map<String, dynamic>),
          totalDegree: (json['total_degree'] as num?)?.toInt(),
          finalDegree: (json['final_degree'] as num?)?.toInt(),
          numberOfTimes: (json['number_of_times'] as num?)?.toInt(),
          attendanceStatus: json['attendance_status'] == null
              ? null
              : AttendanceStatusEnum.fromJson(
                  json['attendance_status'] as Map<String, dynamic>),
          link: json['link'] as String?,
        );

Map<String, dynamic>
    _$$CourseAssessmentMeasuringTypeCourseAndAssessmentsImplToJson(
            _$CourseAssessmentMeasuringTypeCourseAndAssessmentsImpl instance) =>
        <String, dynamic>{
          'id': instance.id,
          'title': instance.title,
          'date': instance.date?.toIso8601String(),
          'type': instance.type,
          'status': instance.status,
          'total_degree': instance.totalDegree,
          'final_degree': instance.finalDegree,
          'number_of_times': instance.numberOfTimes,
          'attendance_status': instance.attendanceStatus,
          'link': instance.link,
        };
