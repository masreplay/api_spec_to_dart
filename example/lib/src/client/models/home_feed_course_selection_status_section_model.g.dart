// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_feed_course_selection_status_section_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeFeedCourseSelectionStatusSectionModelImpl
    _$$HomeFeedCourseSelectionStatusSectionModelImplFromJson(
            Map<String, dynamic> json) =>
        _$HomeFeedCourseSelectionStatusSectionModelImpl(
          id: (json['id'] as num).toInt(),
          type: json['type'] as String? ?? 'course_selection_status',
          title: json['title'] as String,
          description: json['description'] as String?,
          data: HomeFeedCourseSelectionStatusSectionDataPublic.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$HomeFeedCourseSelectionStatusSectionModelImplToJson(
        _$HomeFeedCourseSelectionStatusSectionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'title': instance.title,
      'description': instance.description,
      'data': instance.data,
    };
