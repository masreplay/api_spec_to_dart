// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lecturer_courses_get_lecturer_courses_queries.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LecturerCoursesGetLecturerCoursesQueriesImpl
    _$$LecturerCoursesGetLecturerCoursesQueriesImplFromJson(
            Map<String, dynamic> json) =>
        _$LecturerCoursesGetLecturerCoursesQueriesImpl(
          page: (json['page'] as num?)?.toInt() ?? 1,
          perPage: (json['perPage'] as num?)?.toInt() ?? 10,
        );

Map<String, dynamic> _$$LecturerCoursesGetLecturerCoursesQueriesImplToJson(
        _$LecturerCoursesGetLecturerCoursesQueriesImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'perPage': instance.perPage,
    };
