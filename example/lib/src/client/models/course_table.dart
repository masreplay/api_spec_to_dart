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
    @JsonKey(name: 'course_code')

    /// Course Code
    required String courseCode,
    @JsonKey(name: 'course_classifications')

    /// Course Classifications
    required int? courseClassifications,
    @JsonKey(name: 'total_credits')

    /// Total Credits
    required int totalCredits,
    @JsonKey(name: 'course_result_type')

    /// Course Result Type
    required int courseResultType,
    @JsonKey(name: 'highest_grade')

    /// Highest Grade
    required int highestGrade,
    @JsonKey(name: 'lowest_grade')

    /// Lowest Grade
    required int lowestGrade,
    @JsonKey(name: 'prerequisite_hours')

    /// Prerequisite Hours
    required int? prerequisiteHours,
    @JsonKey(name: 'course_version')

    /// Course Version
    required String? courseVersion,
    @JsonKey(name: 'course_status')
    required StudentCourseStatusEnum? courseStatus,
    @JsonKey(name: 'course_fees')

    /// Course Fees
    required int courseFees,
    @JsonKey(name: 'course_distribution_level')

    /// Course Distribution Level
    required int courseDistributionLevel,
    @JsonKey(name: 'id')

    /// Id
    required int id,
    @JsonKey(name: 'arabic_name')

    /// Arabic Name
    required String? arabicName,
    @JsonKey(name: 'english_name')

    /// English Name
    required String? englishName,
    @JsonKey(name: 'organizational_structure_id')

    /// Organizational Structure Id
    required int organizationalStructureId,
    @JsonKey(name: 'academic_learning_framework_system_id')

    /// Academic Learning Framework System Id
    required int academicLearningFrameworkSystemId,
    @JsonKey(name: 'course_leader_id')

    /// Course Leader Id
    required int courseLeaderId,
    @JsonKey(name: 'course_reviewer_id')

    /// Course Reviewer Id
    required int courseReviewerId,
    @JsonKey(name: 'course_tutor_id')

    /// Course Tutor Id
    required int courseTutorId,
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
  }) = _CourseTable;

  factory CourseTable.fromJson(Map<String, dynamic> json) =>
      _$CourseTableFromJson(json);
}
