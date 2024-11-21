// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_union_student_seamsters_summary_without_courses_.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseUnionStudentSeamstersSummaryWithoutCoursesImpl
    _$$BaseResponseUnionStudentSeamstersSummaryWithoutCoursesImplFromJson(
            Map<String, dynamic> json) =>
        _$BaseResponseUnionStudentSeamstersSummaryWithoutCoursesImpl(
          message: json['message'] as String?,
          data: json['data'] == null
              ? null
              : StudentSeamstersSummaryWithoutCourses.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$$BaseResponseUnionStudentSeamstersSummaryWithoutCoursesImplToJson(
            _$BaseResponseUnionStudentSeamstersSummaryWithoutCoursesImpl
                instance) =>
        <String, dynamic>{
          'message': instance.message,
          'data': instance.data,
        };
