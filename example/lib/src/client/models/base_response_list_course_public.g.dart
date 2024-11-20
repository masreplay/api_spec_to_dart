// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_list_course_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseListCoursePublicImpl _$$BaseResponseListCoursePublicImplFromJson(
        Map<String, dynamic> json) =>
    _$BaseResponseListCoursePublicImpl(
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>)
          .map((e) => CoursePublic.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BaseResponseListCoursePublicImplToJson(
        _$BaseResponseListCoursePublicImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
