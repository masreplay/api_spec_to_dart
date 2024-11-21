// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_selected_courses_update_selected_courses_queries.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentSelectedCoursesUpdateSelectedCoursesQueriesImpl
    _$$StudentSelectedCoursesUpdateSelectedCoursesQueriesImplFromJson(
            Map<String, dynamic> json) =>
        _$StudentSelectedCoursesUpdateSelectedCoursesQueriesImpl(
          filter: json['filter'] == null
              ? SemesterFilter.all
              : SemesterFilter.fromJson(json['filter'] as String),
        );

Map<String,
    dynamic> _$$StudentSelectedCoursesUpdateSelectedCoursesQueriesImplToJson(
        _$StudentSelectedCoursesUpdateSelectedCoursesQueriesImpl instance) =>
    <String, dynamic>{
      'filter': instance.filter,
    };
