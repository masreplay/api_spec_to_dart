// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_staffs_table.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourseStaffsTableImpl _$$CourseStaffsTableImplFromJson(
        Map<String, dynamic> json) =>
    _$CourseStaffsTableImpl(
      employeeId: (json['employee_id'] as num).toInt(),
      employeeRole: (json['employee_role'] as num).toInt(),
      capacity: (json['capacity'] as num).toInt(),
      closeEditingEmployee: json['close_editing_employee'] as bool,
      courseConfiguration:
          json['course_configuration'] as Map<String, dynamic>?,
      id: (json['id'] as num).toInt(),
      courseId: (json['course_id'] as num).toInt(),
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

Map<String, dynamic> _$$CourseStaffsTableImplToJson(
        _$CourseStaffsTableImpl instance) =>
    <String, dynamic>{
      'employee_id': instance.employeeId,
      'employee_role': instance.employeeRole,
      'capacity': instance.capacity,
      'close_editing_employee': instance.closeEditingEmployee,
      'course_configuration': instance.courseConfiguration,
      'id': instance.id,
      'course_id': instance.courseId,
      'creator_id': instance.creatorId,
      'creation_time': instance.creationTime.toIso8601String(),
      'last_modifier_id': instance.lastModifierId,
      'last_modification_time':
          instance.lastModificationTime?.toIso8601String(),
      'is_deleted': instance.isDeleted,
      'deleter_id': instance.deleterId,
      'deletion_time': instance.deletionTime?.toIso8601String(),
    };
