// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_selected_courses_queries.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateSelectedCoursesQueriesImpl _$$UpdateSelectedCoursesQueriesImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateSelectedCoursesQueriesImpl(
      filter: json['filter'] == null
          ? SemesterFilter.all
          : SemesterFilter.fromJson(json['filter'] as String),
    );

Map<String, dynamic> _$$UpdateSelectedCoursesQueriesImplToJson(
        _$UpdateSelectedCoursesQueriesImpl instance) =>
    <String, dynamic>{
      'filter': instance.filter,
    };
