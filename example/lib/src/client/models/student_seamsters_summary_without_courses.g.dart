// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_seamsters_summary_without_courses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentSeamstersSummaryWithoutCoursesImpl
    _$$StudentSeamstersSummaryWithoutCoursesImplFromJson(
            Map<String, dynamic> json) =>
        _$StudentSeamstersSummaryWithoutCoursesImpl(
          semesters: json['semesters'] as List<dynamic>?,
          year: json['year'] == null
              ? null
              : StudyYearPublic.fromJson(json['year'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$StudentSeamstersSummaryWithoutCoursesImplToJson(
        _$StudentSeamstersSummaryWithoutCoursesImpl instance) =>
    <String, dynamic>{
      'semesters': instance.semesters,
      'year': instance.year,
    };
