import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import './models.dart';

part 'course_table.freezed.dart';
part 'course_table.g.dart';

@freezed
class CourseTable with _$CourseTable {
  const CourseTable._();

  @JsonSerializable(converters: convertors)
  const factory CourseTable({
    @JsonKey(name: 'course_code') required String courseCode,
    @JsonKey(name: 'course_classifications')
    required int? courseClassifications,
    @JsonKey(name: 'total_credits') required int totalCredits,
    @JsonKey(name: 'course_result_type') required int courseResultType,
    @JsonKey(name: 'highest_grade') required int highestGrade,
    @JsonKey(name: 'lowest_grade') required int lowestGrade,
    @JsonKey(name: 'prerequisite_hours') required int? prerequisiteHours,
    @JsonKey(name: 'course_version') required String? courseVersion,
    @JsonKey(name: 'course_status')
    required StudentCourseStatusEnum? courseStatus,
    @JsonKey(name: 'course_fees') required int courseFees,
    @JsonKey(name: 'course_distribution_level')
    required int courseDistributionLevel,
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'arabic_name') required String? arabicName,
    @JsonKey(name: 'english_name') required String? englishName,
    @JsonKey(name: 'organizational_structure_id')
    required int organizationalStructureId,
    @JsonKey(name: 'academic_learning_framework_system_id')
    required int academicLearningFrameworkSystemId,
    @JsonKey(name: 'course_leader_id') required int courseLeaderId,
    @JsonKey(name: 'course_reviewer_id') required int courseReviewerId,
    @JsonKey(name: 'course_tutor_id') required int courseTutorId,
    @JsonKey(name: 'creator_id') required int creatorId,
    @JsonKey(name: 'creation_time') required DateTime creationTime,
    @JsonKey(name: 'last_modifier_id') required int? lastModifierId,
    @JsonKey(name: 'last_modification_time')
    required DateTime? lastModificationTime,
    @JsonKey(name: 'is_deleted') required bool isDeleted,
    @JsonKey(name: 'deleter_id') required int? deleterId,
    @JsonKey(name: 'deletion_time') required DateTime? deletionTime,
  }) = _CourseTable;

  factory CourseTable.fromJson(Map<String, dynamic> json) =>
      _$CourseTableFromJson(json);
}
