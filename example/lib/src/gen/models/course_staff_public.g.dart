// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_staff_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourseStaffPublicImpl _$$CourseStaffPublicImplFromJson(
        Map<String, dynamic> json) =>
    _$CourseStaffPublicImpl(
      employeeId: (json['employee_id'] as num).toInt(),
      employeeRole: (json['employee_role'] as num).toInt(),
      capacity: (json['capacity'] as num).toInt(),
      closeEditingEmployee: json['close_editing_employee'] as bool,
      courseConfiguration:
          json['course_configuration'] as Map<String, dynamic>?,
      id: (json['id'] as num?)?.toInt(),
      course: json['course'] == null
          ? null
          : CourseTable.fromJson(json['course'] as Map<String, dynamic>),
      employee: json['employee'] == null
          ? null
          : EmployeePublic.fromJson(json['employee'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CourseStaffPublicImplToJson(
        _$CourseStaffPublicImpl instance) =>
    <String, dynamic>{
      'employee_id': instance.employeeId,
      'employee_role': instance.employeeRole,
      'capacity': instance.capacity,
      'close_editing_employee': instance.closeEditingEmployee,
      'course_configuration': instance.courseConfiguration,
      'id': instance.id,
      'course': instance.course,
      'employee': instance.employee,
    };
