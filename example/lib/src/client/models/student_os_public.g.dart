// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_os_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentOSPublicImpl _$$StudentOSPublicImplFromJson(
        Map<String, dynamic> json) =>
    _$StudentOSPublicImpl(
      id: (json['id'] as num?)?.toInt(),
      department: json['department'] as String?,
      collage: json['collage'] as String?,
      year: json['year'] == null
          ? null
          : StudyYearPublic.fromJson(json['year'] as Map<String, dynamic>),
      studyType: (json['study_type'] as num?)?.toInt(),
      grade: (json['grade'] as num?)?.toInt(),
      currentSemester: json['current_semester'] as String?,
    );

Map<String, dynamic> _$$StudentOSPublicImplToJson(
        _$StudentOSPublicImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'department': instance.department,
      'collage': instance.collage,
      'year': instance.year,
      'study_type': instance.studyType,
      'grade': instance.grade,
      'current_semester': instance.currentSemester,
    };
