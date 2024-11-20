// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_feed_study_program_section_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeFeedStudyProgramSectionPublicImpl
    _$$HomeFeedStudyProgramSectionPublicImplFromJson(
            Map<String, dynamic> json) =>
        _$HomeFeedStudyProgramSectionPublicImpl(
          id: (json['id'] as num).toInt(),
          type: json['type'] as String? ?? String.study_program,
          title: json['title'] as String,
          description: json['description'] as String?,
          data: HomeFeedStudyProgramSectionDataPublic.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$HomeFeedStudyProgramSectionPublicImplToJson(
        _$HomeFeedStudyProgramSectionPublicImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'title': instance.title,
      'description': instance.description,
      'data': instance.data,
    };
