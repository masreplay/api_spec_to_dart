// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_course_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseCoursePublicImpl _$$BaseResponseCoursePublicImplFromJson(
        Map<String, dynamic> json) =>
    _$BaseResponseCoursePublicImpl(
      message: json['message'] as String?,
      data: CoursePublic.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BaseResponseCoursePublicImplToJson(
        _$BaseResponseCoursePublicImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
