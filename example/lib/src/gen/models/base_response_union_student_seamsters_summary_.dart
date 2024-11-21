import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'base_response_union_student_seamsters_summary_.freezed.dart';
part 'base_response_union_student_seamsters_summary_.g.dart';

///BaseResponse_Union_StudentSeamstersSummary__NoneType__

@freezed
class BaseResponseUnionStudentSeamstersSummary
    with _$BaseResponseUnionStudentSeamstersSummary {
  const BaseResponseUnionStudentSeamstersSummary._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseUnionStudentSeamstersSummary({
    /// Message
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data') required StudentSeamstersSummary? data,
  }) = _BaseResponseUnionStudentSeamstersSummary;

  factory BaseResponseUnionStudentSeamstersSummary.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$BaseResponseUnionStudentSeamstersSummaryFromJson(
        json,
      );
}
