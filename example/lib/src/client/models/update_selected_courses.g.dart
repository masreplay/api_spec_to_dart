// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_selected_courses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateSelectedCoursesImpl _$$UpdateSelectedCoursesImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateSelectedCoursesImpl(
      courseId: (json['course_id'] as num).toInt(),
      courseStuffId: (json['course_stuff_id'] as num).toInt(),
    );

Map<String, dynamic> _$$UpdateSelectedCoursesImplToJson(
        _$UpdateSelectedCoursesImpl instance) =>
    <String, dynamic>{
      'course_id': instance.courseId,
      'course_stuff_id': instance.courseStuffId,
    };
