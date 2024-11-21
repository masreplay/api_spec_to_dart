// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_feed_study_program_section_data_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeFeedStudyProgramSectionDataPublicImpl
    _$$HomeFeedStudyProgramSectionDataPublicImplFromJson(
            Map<String, dynamic> json) =>
        _$HomeFeedStudyProgramSectionDataPublicImpl(
          studyProgramId: (json['study_program_id'] as num).toInt(),
          name: (json['name'] as num).toInt(),
          studyYear: json['study_year'] as String,
          studyYearFormatted: json['study_year_formatted'] as String,
          studyType: StudyProgramType.fromJson(
              json['study_type'] as Map<String, dynamic>),
          studyTypeFormatted: json['study_type_formatted'] as String,
          semester: json['semester'] as String,
          grade: (json['grade'] as num).toInt(),
          gradeFormatted: json['grade_formatted'] as String,
        );

Map<String, dynamic> _$$HomeFeedStudyProgramSectionDataPublicImplToJson(
        _$HomeFeedStudyProgramSectionDataPublicImpl instance) =>
    <String, dynamic>{
      'study_program_id': instance.studyProgramId,
      'name': instance.name,
      'study_year': instance.studyYear,
      'study_year_formatted': instance.studyYearFormatted,
      'study_type': instance.studyType,
      'study_type_formatted': instance.studyTypeFormatted,
      'semester': instance.semester,
      'grade': instance.grade,
      'grade_formatted': instance.gradeFormatted,
    };
