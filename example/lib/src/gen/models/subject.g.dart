// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subject.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubjectImpl _$$SubjectImplFromJson(Map<String, dynamic> json) =>
    _$SubjectImpl(
      id: (json['id'] as num?)?.toInt(),
      selectedCourseId: (json['selected_course_id'] as num?)?.toInt(),
      name: json['name'] as String?,
      arabicName: json['arabic_name'] as String?,
      englishName: json['english_name'] as String?,
      code: json['code'] as String?,
      numberOfUnits: (json['number_of_units'] as num?)?.toInt(),
      semesterId: (json['semester_id'] as num?)?.toInt(),
      isEnrolled: json['is_enrolled'] as bool?,
      isEnabled: json['is_enabled'] as bool?,
      courseStatus: (json['course_status'] as num?)?.toInt(),
      courseStaff: (json['course_staff'] as List<dynamic>?)
          ?.map((e) => CourseStaffsTable.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SubjectImplToJson(_$SubjectImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'selected_course_id': instance.selectedCourseId,
      'name': instance.name,
      'arabic_name': instance.arabicName,
      'english_name': instance.englishName,
      'code': instance.code,
      'number_of_units': instance.numberOfUnits,
      'semester_id': instance.semesterId,
      'is_enrolled': instance.isEnrolled,
      'is_enabled': instance.isEnabled,
      'course_status': instance.courseStatus,
      'course_staff': instance.courseStaff,
    };
