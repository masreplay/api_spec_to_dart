import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'course_distributions_table.freezed.dart';
part 'course_distributions_table.g.dart';

@freezed
class CourseDistributionsTable with _$CourseDistributionsTable {
  const CourseDistributionsTable._();

  @JsonSerializable(converters: convertors)
  const factory CourseDistributionsTable({
    @JsonKey(name: 'academic_year_divisionId')

    /// Academic Year Divisionid
    required int academicYearDivisionId,
    @JsonKey(name: 'study_program_id')

    /// Study Program Id
    required int studyProgramId,
    @JsonKey(name: 'grade')

    /// Grade
    required int grade,
    @JsonKey(name: 'course_id')

    /// Course Id
    required int courseId,
    @JsonKey(name: 'id')

    /// Id
    required int id,
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
  }) = _CourseDistributionsTable;

  factory CourseDistributionsTable.fromJson(Map<String, dynamic> json) =>
      _$CourseDistributionsTableFromJson(json);
}
