// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_list_course_assessment_measuring_type_course_and_assessments.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseListCourseAssessmentMeasuringTypeCourseAndAssessmentsImpl
    _$$BaseResponseListCourseAssessmentMeasuringTypeCourseAndAssessmentsImplFromJson(
            Map<String, dynamic> json) =>
        _$BaseResponseListCourseAssessmentMeasuringTypeCourseAndAssessmentsImpl(
          message: json['message'] as String?,
          data: (json['data'] as List<dynamic>)
              .map((e) =>
                  CourseAssessmentMeasuringTypeCourseAndAssessments.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic>
    _$$BaseResponseListCourseAssessmentMeasuringTypeCourseAndAssessmentsImplToJson(
            _$BaseResponseListCourseAssessmentMeasuringTypeCourseAndAssessmentsImpl
                instance) =>
        <String, dynamic>{
          'message': instance.message,
          'data': instance.data,
        };
