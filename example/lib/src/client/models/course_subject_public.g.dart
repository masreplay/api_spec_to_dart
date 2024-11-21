// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_subject_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourseSubjectPublicImpl _$$CourseSubjectPublicImplFromJson(
        Map<String, dynamic> json) =>
    _$CourseSubjectPublicImpl(
      courseCurriculumId: (json['course_curriculum_id'] as num).toInt(),
      courseSubjectHeader: json['course_subject_header'] as String,
      courseSubjectContent: json['course_subject_content'] as String,
      id: (json['id'] as num).toInt(),
      attachments: (json['attachments'] as List<dynamic>?)
          ?.map((e) => AttachmentResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CourseSubjectPublicImplToJson(
        _$CourseSubjectPublicImpl instance) =>
    <String, dynamic>{
      'course_curriculum_id': instance.courseCurriculumId,
      'course_subject_header': instance.courseSubjectHeader,
      'course_subject_content': instance.courseSubjectContent,
      'id': instance.id,
      'attachments': instance.attachments,
    };
