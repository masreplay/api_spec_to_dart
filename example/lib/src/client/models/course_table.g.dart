// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_table.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourseTableImpl _$$CourseTableImplFromJson(Map<String, dynamic> json) =>
    _$CourseTableImpl(
      courseCode: json['course_code'] as String,
      courseClassifications: (json['course_classifications'] as num?)?.toInt(),
      totalCredits: (json['total_credits'] as num).toInt(),
      courseResultType: (json['course_result_type'] as num).toInt(),
      highestGrade: (json['highest_grade'] as num).toInt(),
      lowestGrade: (json['lowest_grade'] as num).toInt(),
      prerequisiteHours: (json['prerequisite_hours'] as num?)?.toInt(),
      courseVersion: json['course_version'] as String?,
      courseStatus: json['course_status'] == null
          ? null
          : StudentCourseStatusEnum.fromJson(
              json['course_status'] as Map<String, dynamic>),
      courseFees: (json['course_fees'] as num).toInt(),
      courseDistributionLevel:
          (json['course_distribution_level'] as num).toInt(),
      id: (json['id'] as num).toInt(),
      arabicName: json['arabic_name'] as String?,
      englishName: json['english_name'] as String?,
      organizationalStructureId:
          (json['organizational_structure_id'] as num).toInt(),
      academicLearningFrameworkSystemId:
          (json['academic_learning_framework_system_id'] as num).toInt(),
      courseLeaderId: (json['course_leader_id'] as num).toInt(),
      courseReviewerId: (json['course_reviewer_id'] as num).toInt(),
      courseTutorId: (json['course_tutor_id'] as num).toInt(),
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

Map<String, dynamic> _$$CourseTableImplToJson(_$CourseTableImpl instance) =>
    <String, dynamic>{
      'course_code': instance.courseCode,
      'course_classifications': instance.courseClassifications,
      'total_credits': instance.totalCredits,
      'course_result_type': instance.courseResultType,
      'highest_grade': instance.highestGrade,
      'lowest_grade': instance.lowestGrade,
      'prerequisite_hours': instance.prerequisiteHours,
      'course_version': instance.courseVersion,
      'course_status': instance.courseStatus,
      'course_fees': instance.courseFees,
      'course_distribution_level': instance.courseDistributionLevel,
      'id': instance.id,
      'arabic_name': instance.arabicName,
      'english_name': instance.englishName,
      'organizational_structure_id': instance.organizationalStructureId,
      'academic_learning_framework_system_id':
          instance.academicLearningFrameworkSystemId,
      'course_leader_id': instance.courseLeaderId,
      'course_reviewer_id': instance.courseReviewerId,
      'course_tutor_id': instance.courseTutorId,
      'creator_id': instance.creatorId,
      'creation_time': instance.creationTime.toIso8601String(),
      'last_modifier_id': instance.lastModifierId,
      'last_modification_time':
          instance.lastModificationTime?.toIso8601String(),
      'is_deleted': instance.isDeleted,
      'deleter_id': instance.deleterId,
      'deletion_time': instance.deletionTime?.toIso8601String(),
    };
