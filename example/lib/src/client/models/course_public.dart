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
    @JsonKey(name: 'name') required String? name,
    @JsonKey(name: 'course_staffs') required List? courseStaffs,
    @JsonKey(name: 'seamster') required AcademicYearDivisionPublic? seamster,
  }) = _CoursePublic;

  factory CoursePublic.fromJson(Map<String, dynamic> json) =>
      _$CoursePublicFromJson(json);
}
