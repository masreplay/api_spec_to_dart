import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import './models.dart';

part 'course_public.freezed.dart';
part 'course_public.g.dart';

@freezed
class CoursePublic with _$CoursePublic {
  const CoursePublic._();

  @JsonSerializable(converters: convertors)
  const factory CoursePublic({
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
    @JsonKey(name: 'name')

    /// Name
    required String? name,
    @JsonKey(name: 'course_staffs')

    /// Course Staffs
    required List? courseStaffs,
    @JsonKey(name: 'seamster') required AcademicYearDivisionPublic? seamster,
  }) = _CoursePublic;

  factory CoursePublic.fromJson(Map<String, dynamic> json) =>
      _$CoursePublicFromJson(json);
}
