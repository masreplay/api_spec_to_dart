import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'course_staff_public.freezed.dart';
part 'course_staff_public.g.dart';

///CourseStaffPublic

@freezed
class CourseStaffPublic with _$CourseStaffPublic {
  const CourseStaffPublic._();

  @JsonSerializable(converters: convertors)
  const factory CourseStaffPublic({
    /// Employee Id
    @JsonKey(name: 'employee_id') required int employeeId,

    /// Employee Role
    @JsonKey(name: 'employee_role') required int employeeRole,

    /// Capacity
    @JsonKey(name: 'capacity') required int capacity,

    /// Close Editing Employee
    @JsonKey(name: 'close_editing_employee') required bool closeEditingEmployee,

    /// Course Configuration
    @JsonKey(name: 'course_configuration')
    required Map<String, dynamic>? courseConfiguration,

    /// Id
    @JsonKey(name: 'id') required int? id,
    @JsonKey(name: 'course') required CourseTable? course,
    @JsonKey(name: 'employee') required EmployeePublic? employee,
  }) = _CourseStaffPublic;

  factory CourseStaffPublic.fromJson(Map<String, dynamic> json) =>
      _$CourseStaffPublicFromJson(json);
}
