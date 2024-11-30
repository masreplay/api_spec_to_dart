// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_lecturer_course_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseLecturerCoursePublicImpl
    _$$BaseResponseLecturerCoursePublicImplFromJson(
            Map<String, dynamic> json) =>
        _$BaseResponseLecturerCoursePublicImpl(
          message: json['message'] as String?,
          data: LecturerCoursePublic.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$BaseResponseLecturerCoursePublicImplToJson(
        _$BaseResponseLecturerCoursePublicImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
