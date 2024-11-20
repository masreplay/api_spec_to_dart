// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_union_student_seamsters_summary_without_courses_none_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseUnionStudentSeamstersSummaryWithoutCoursesNoneTypeImpl
    _$$BaseResponseUnionStudentSeamstersSummaryWithoutCoursesNoneTypeImplFromJson(
            Map<String, dynamic> json) =>
        _$BaseResponseUnionStudentSeamstersSummaryWithoutCoursesNoneTypeImpl(
          message: json['message'] as String?,
          data: json['data'] == null
              ? null
              : StudentSeamstersSummaryWithoutCourses.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$$BaseResponseUnionStudentSeamstersSummaryWithoutCoursesNoneTypeImplToJson(
            _$BaseResponseUnionStudentSeamstersSummaryWithoutCoursesNoneTypeImpl
                instance) =>
        <String, dynamic>{
          'message': instance.message,
          'data': instance.data,
        };
