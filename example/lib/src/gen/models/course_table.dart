import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'course_table.freezed.dart';
part 'course_table.g.dart';

///CourseTable

@freezed
class CourseTable with _$CourseTable {
  const CourseTable._();

  @JsonSerializable(converters: convertors)
  const factory CourseTable({
    /// Course Code
    @JsonKey(name: 'course_code') required String courseCode,

    /// Course Classifications
    @JsonKey(name: 'course_classifications')
    required int? courseClassifications,

    /// Total Credits
    @JsonKey(name: 'total_credits') required int totalCredits,

    /// Course Result Type
    @JsonKey(name: 'course_result_type') required int courseResultType,

    /// Highest Grade
    @JsonKey(name: 'highest_grade') required int highestGrade,

    /// Lowest Grade
    @JsonKey(name: 'lowest_grade') required int lowestGrade,

    /// Prerequisite Hours
    @JsonKey(name: 'prerequisite_hours') required int? prerequisiteHours,

    /// Course Version
    @JsonKey(name: 'course_version') required String? courseVersion,
    @JsonKey(name: 'course_status')
    required StudentCourseStatusEnum? courseStatus,

    /// Course Fees
    @JsonKey(name: 'course_fees') required int courseFees,

    /// Course Distribution Level
    @JsonKey(name: 'course_distribution_level')
    required int courseDistributionLevel,

    /// Id
    @JsonKey(name: 'id') required int id,

    /// Arabic Name
    @JsonKey(name: 'arabic_name') required String? arabicName,

    /// English Name
    @JsonKey(name: 'english_name') required String? englishName,

    /// Organizational Structure Id
    @JsonKey(name: 'organizational_structure_id')
    required int organizationalStructureId,

    /// Academic Learning Framework System Id
    @JsonKey(name: 'academic_learning_framework_system_id')
    required int academicLearningFrameworkSystemId,

    /// Course Leader Id
    @JsonKey(name: 'course_leader_id') required int courseLeaderId,

    /// Course Reviewer Id
    @JsonKey(name: 'course_reviewer_id') required int courseReviewerId,

    /// Course Tutor Id
    @JsonKey(name: 'course_tutor_id') required int courseTutorId,

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
  }) = _CourseTable;

  factory CourseTable.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CourseTableFromJson(json);
}
