// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lecturer_course_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LecturerCoursePublicImpl _$$LecturerCoursePublicImplFromJson(
        Map<String, dynamic> json) =>
    _$LecturerCoursePublicImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      lecturerName: json['lecturer_name'] as String,
      collageName: json['collage_name'] as String,
      divisionName: json['division_name'] as String,
      groupName: json['group_name'] as String,
      studentCount: (json['student_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$LecturerCoursePublicImplToJson(
        _$LecturerCoursePublicImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'lecturer_name': instance.lecturerName,
      'collage_name': instance.collageName,
      'division_name': instance.divisionName,
      'group_name': instance.groupName,
      'student_count': instance.studentCount,
    };
