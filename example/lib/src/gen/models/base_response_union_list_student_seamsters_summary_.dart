import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'base_response_union_list_student_seamsters_summary_.freezed.dart';
part 'base_response_union_list_student_seamsters_summary_.g.dart';

@freezed
class BaseResponseUnionListStudentSeamstersSummary
    with _$BaseResponseUnionListStudentSeamstersSummary {
  const BaseResponseUnionListStudentSeamstersSummary._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseUnionListStudentSeamstersSummary({
    /// Message
    @JsonKey(name: 'message') required String? message,

    /// Data
    @JsonKey(name: 'data') required List<StudentSeamstersSummary>? data,
  }) = _BaseResponseUnionListStudentSeamstersSummary;

  factory BaseResponseUnionListStudentSeamstersSummary.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$BaseResponseUnionListStudentSeamstersSummaryFromJson(json);
}
