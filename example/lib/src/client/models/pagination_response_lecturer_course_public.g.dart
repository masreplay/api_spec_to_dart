// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_response_lecturer_course_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginationResponseLecturerCoursePublicImpl
    _$$PaginationResponseLecturerCoursePublicImplFromJson(
            Map<String, dynamic> json) =>
        _$PaginationResponseLecturerCoursePublicImpl(
          page: (json['page'] as num).toInt(),
          perPage: (json['per_page'] as num).toInt(),
          total: (json['total'] as num).toInt(),
          data: json['data'] as List<dynamic>,
        );

Map<String, dynamic> _$$PaginationResponseLecturerCoursePublicImplToJson(
        _$PaginationResponseLecturerCoursePublicImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'per_page': instance.perPage,
      'total': instance.total,
      'data': instance.data,
    };
