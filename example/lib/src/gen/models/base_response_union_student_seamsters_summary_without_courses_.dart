import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import './models.dart';

part 'base_response_union_student_seamsters_summary_without_courses_.freezed.dart';
part 'base_response_union_student_seamsters_summary_without_courses_.g.dart';

@freezed
class BaseResponseUnionStudentSeamstersSummaryWithoutCourses
    with _$BaseResponseUnionStudentSeamstersSummaryWithoutCourses {
  const BaseResponseUnionStudentSeamstersSummaryWithoutCourses._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseUnionStudentSeamstersSummaryWithoutCourses({
    /// Message
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data') required StudentSeamstersSummaryWithoutCourses? data,
  }) = _BaseResponseUnionStudentSeamstersSummaryWithoutCourses;

  factory BaseResponseUnionStudentSeamstersSummaryWithoutCourses.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$BaseResponseUnionStudentSeamstersSummaryWithoutCoursesFromJson(json);
}
