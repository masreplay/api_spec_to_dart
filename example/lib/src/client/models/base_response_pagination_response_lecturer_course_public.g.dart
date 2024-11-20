// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_pagination_response_lecturer_course_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponsePaginationResponseLecturerCoursePublicImpl
    _$$BaseResponsePaginationResponseLecturerCoursePublicImplFromJson(
            Map<String, dynamic> json) =>
        _$BaseResponsePaginationResponseLecturerCoursePublicImpl(
          message: json['message'] as String?,
          data: PaginationResponseLecturerCoursePublic.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String,
    dynamic> _$$BaseResponsePaginationResponseLecturerCoursePublicImplToJson(
        _$BaseResponsePaginationResponseLecturerCoursePublicImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
