import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'course_staffs_table.freezed.dart';
part 'course_staffs_table.g.dart';

@freezed
class CourseStaffsTable with _$CourseStaffsTable {
  const CourseStaffsTable._();

  @JsonSerializable(converters: convertors)
  const factory CourseStaffsTable({
    @JsonKey(name: 'employee_id') required int employeeId,
    @JsonKey(name: 'employee_role') required int employeeRole,
    @JsonKey(name: 'capacity') required int capacity,
    @JsonKey(name: 'close_editing_employee') required bool closeEditingEmployee,
    @JsonKey(name: 'course_configuration') required Map? courseConfiguration,
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'course_id') required int courseId,
    @JsonKey(name: 'creator_id') required int creatorId,
    @JsonKey(name: 'creation_time') required DateTime creationTime,
    @JsonKey(name: 'last_modifier_id') required int? lastModifierId,
    @JsonKey(name: 'last_modification_time')
    required DateTime? lastModificationTime,
    @JsonKey(name: 'is_deleted') required bool isDeleted,
    @JsonKey(name: 'deleter_id') required int? deleterId,
    @JsonKey(name: 'deletion_time') required DateTime? deletionTime,
  }) = _CourseStaffsTable;

  factory CourseStaffsTable.fromJson(Map<String, dynamic> json) =>
      _$CourseStaffsTableFromJson(json);
}
