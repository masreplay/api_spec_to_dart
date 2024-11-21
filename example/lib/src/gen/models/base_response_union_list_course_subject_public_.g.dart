// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_union_list_course_subject_public_.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseUnionListCourseSubjectPublicImpl
    _$$BaseResponseUnionListCourseSubjectPublicImplFromJson(
            Map<String, dynamic> json) =>
        _$BaseResponseUnionListCourseSubjectPublicImpl(
          message: json['message'] as String?,
          data: (json['data'] as List<dynamic>?)
              ?.map((e) =>
                  CourseSubjectPublic.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$BaseResponseUnionListCourseSubjectPublicImplToJson(
        _$BaseResponseUnionListCourseSubjectPublicImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
