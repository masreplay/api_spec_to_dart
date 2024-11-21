import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'course_distributions_table.freezed.dart';
part 'course_distributions_table.g.dart';

///CourseDistributionsTable

@freezed
class CourseDistributionsTable with _$CourseDistributionsTable {
  const CourseDistributionsTable._();

  @JsonSerializable(converters: convertors)
  const factory CourseDistributionsTable({
    /// Academic Year Divisionid
    @JsonKey(name: 'academic_year_divisionId')
    required int academicYearDivisionId,

    /// Study Program Id
    @JsonKey(name: 'study_program_id') required int studyProgramId,

    /// Grade
    @JsonKey(name: 'grade') required int grade,

    /// Course Id
    @JsonKey(name: 'course_id') required int courseId,

    /// Id
    @JsonKey(name: 'id') required int id,

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
  }) = _CourseDistributionsTable;

  factory CourseDistributionsTable.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CourseDistributionsTableFromJson(json);
}
