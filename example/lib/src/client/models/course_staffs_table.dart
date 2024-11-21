import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'course_staffs_table.freezed.dart';
part 'course_staffs_table.g.dart';

@freezed
class CourseStaffsTable with _$CourseStaffsTable {
  const CourseStaffsTable._();

  @JsonSerializable(converters: convertors)
  const factory CourseStaffsTable({
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
    @JsonKey(name: 'id') required int id,

    /// Course Id
    @JsonKey(name: 'course_id') required int courseId,

    /// Creator Id
    @JsonKey(name: 'creator_id') required int creatorId,

    /// Creation Time
    @JsonKey(name: 'creation_time') required DateTime creationTime,

    /// Last Modifier Id
    @JsonKey(name: 'last_modifier_id') required int? lastModifierId,

    /// Last Modification Time
    @JsonKey(name: 'last_modification_time')
    required DateTime? lastModificationTime,

    /// Is Deleted
    @JsonKey(name: 'is_deleted') required bool isDeleted,

    /// Deleter Id
    @JsonKey(name: 'deleter_id') required int? deleterId,

    /// Deletion Time
    @JsonKey(name: 'deletion_time') required DateTime? deletionTime,
  }) = _CourseStaffsTable;

  factory CourseStaffsTable.fromJson(Map<String, dynamic> json) =>
      _$CourseStaffsTableFromJson(json);
}
