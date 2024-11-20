import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import './models.dart';

part 'base_response_union_student_seamsters_summary_none_type.freezed.dart';
part 'base_response_union_student_seamsters_summary_none_type.g.dart';

@freezed
class BaseResponseUnionStudentSeamstersSummaryNoneType
    with _$BaseResponseUnionStudentSeamstersSummaryNoneType {
  const BaseResponseUnionStudentSeamstersSummaryNoneType._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseUnionStudentSeamstersSummaryNoneType({
    @JsonKey(name: 'message')

    /// Message
    required String? message,
    @JsonKey(name: 'data') required StudentSeamstersSummary? data,
  }) = _BaseResponseUnionStudentSeamstersSummaryNoneType;

  factory BaseResponseUnionStudentSeamstersSummaryNoneType.fromJson(
          Map<String, dynamic> json) =>
      _$BaseResponseUnionStudentSeamstersSummaryNoneTypeFromJson(json);
}
