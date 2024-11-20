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
    required int academicYearDivisionId,
    @JsonKey(name: 'study_program_id') required int studyProgramId,
    @JsonKey(name: 'grade') required int grade,
    @JsonKey(name: 'course_id') required int courseId,
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'creator_id') required int creatorId,
    @JsonKey(name: 'creation_time') required DateTime creationTime,
    @JsonKey(name: 'last_modifier_id') required int? lastModifierId,
    @JsonKey(name: 'last_modification_time')
    required DateTime? lastModificationTime,
    @JsonKey(name: 'is_deleted') required bool isDeleted,
    @JsonKey(name: 'deleter_id') required int? deleterId,
    @JsonKey(name: 'deletion_time') required DateTime? deletionTime,
  }) = _CourseDistributionsTable;

  factory CourseDistributionsTable.fromJson(Map<String, dynamic> json) =>
      _$CourseDistributionsTableFromJson(json);
}
