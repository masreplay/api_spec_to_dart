import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'course_public.freezed.dart';
part 'course_public.g.dart';

///CoursePublic

@freezed
class CoursePublic with _$CoursePublic {
  const CoursePublic._();

  @JsonSerializable(converters: convertors)
  const factory CoursePublic({
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

    /// Name
    @JsonKey(name: 'name') required String? name,

    /// Course Staffs
    @JsonKey(name: 'course_staffs') required List<dynamic>? courseStaffs,
    @JsonKey(name: 'seamster') required AcademicYearDivisionPublic? seamster,
  }) = _CoursePublic;

  factory CoursePublic.fromJson(Map<String, dynamic> json) =>
      _$CoursePublicFromJson(json);
}
