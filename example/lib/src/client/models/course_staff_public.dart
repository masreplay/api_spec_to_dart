import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import './models.dart';

part 'course_staff_public.freezed.dart';
part 'course_staff_public.g.dart';

@freezed
class CourseStaffPublic with _$CourseStaffPublic {
  const CourseStaffPublic._();

  @JsonSerializable(converters: convertors)
  const factory CourseStaffPublic({
    @JsonKey(name: 'employee_id')

    /// Employee Id
    required int employeeId,
    @JsonKey(name: 'employee_role')

    /// Employee Role
    required int employeeRole,
    @JsonKey(name: 'capacity')

    /// Capacity
    required int capacity,
    @JsonKey(name: 'close_editing_employee')

    /// Close Editing Employee
    required bool closeEditingEmployee,
    @JsonKey(name: 'course_configuration')

    /// Course Configuration
    required Map? courseConfiguration,
    @JsonKey(name: 'id')

    /// Id
    required int? id,
    @JsonKey(name: 'course') required CourseTable? course,
    @JsonKey(name: 'employee') required EmployeePublic? employee,
  }) = _CourseStaffPublic;

  factory CourseStaffPublic.fromJson(Map<String, dynamic> json) =>
      _$CourseStaffPublicFromJson(json);
}
