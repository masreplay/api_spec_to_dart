// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_distributions_table.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourseDistributionsTableImpl _$$CourseDistributionsTableImplFromJson(
        Map<String, dynamic> json) =>
    _$CourseDistributionsTableImpl(
      academicYearDivisionId: (json['academic_year_divisionId'] as num).toInt(),
      studyProgramId: (json['study_program_id'] as num).toInt(),
      grade: (json['grade'] as num).toInt(),
      courseId: (json['course_id'] as num).toInt(),
      id: (json['id'] as num).toInt(),
      creatorId: (json['creator_id'] as num).toInt(),
      creationTime: DateTime.parse(json['creation_time'] as String),
      lastModifierId: (json['last_modifier_id'] as num?)?.toInt(),
      lastModificationTime: json['last_modification_time'] == null
          ? null
          : DateTime.parse(json['last_modification_time'] as String),
      isDeleted: json['is_deleted'] as bool,
      deleterId: (json['deleter_id'] as num?)?.toInt(),
      deletionTime: json['deletion_time'] == null
          ? null
          : DateTime.parse(json['deletion_time'] as String),
    );

Map<String, dynamic> _$$CourseDistributionsTableImplToJson(
        _$CourseDistributionsTableImpl instance) =>
    <String, dynamic>{
      'academic_year_divisionId': instance.academicYearDivisionId,
      'study_program_id': instance.studyProgramId,
      'grade': instance.grade,
      'course_id': instance.courseId,
      'id': instance.id,
      'creator_id': instance.creatorId,
      'creation_time': instance.creationTime.toIso8601String(),
      'last_modifier_id': instance.lastModifierId,
      'last_modification_time':
          instance.lastModificationTime?.toIso8601String(),
      'is_deleted': instance.isDeleted,
      'deleter_id': instance.deleterId,
      'deletion_time': instance.deletionTime?.toIso8601String(),
    };
