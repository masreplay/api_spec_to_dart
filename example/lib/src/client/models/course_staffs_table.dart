import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'course_staffs_table.freezed.dart';
part 'course_staffs_table.g.dart';

@freezed
class CourseStaffsTable with _$CourseStaffsTable {
  const CourseStaffsTable._();

  @JsonSerializable(converters: convertors)
  const factory CourseStaffsTable({
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
    required int id,
    @JsonKey(name: 'course_id')

    /// Course Id
    required int courseId,
    @JsonKey(name: 'creator_id')

    /// Creator Id
    required int creatorId,
    @JsonKey(name: 'creation_time')

    /// Creation Time
    required DateTime creationTime,
    @JsonKey(name: 'last_modifier_id')

    /// Last Modifier Id
    required int? lastModifierId,
    @JsonKey(name: 'last_modification_time')

    /// Last Modification Time
    required DateTime? lastModificationTime,
    @JsonKey(name: 'is_deleted')

    /// Is Deleted
    required bool isDeleted,
    @JsonKey(name: 'deleter_id')

    /// Deleter Id
    required int? deleterId,
    @JsonKey(name: 'deletion_time')

    /// Deletion Time
    required DateTime? deletionTime,
  }) = _CourseStaffsTable;

  factory CourseStaffsTable.fromJson(Map<String, dynamic> json) =>
      _$CourseStaffsTableFromJson(json);
}
