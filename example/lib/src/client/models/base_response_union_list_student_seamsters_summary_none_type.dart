import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'base_response_union_list_student_seamsters_summary_none_type.freezed.dart';
part 'base_response_union_list_student_seamsters_summary_none_type.g.dart';

@freezed
class BaseResponseUnionListStudentSeamstersSummaryNoneType
    with _$BaseResponseUnionListStudentSeamstersSummaryNoneType {
  const BaseResponseUnionListStudentSeamstersSummaryNoneType._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseUnionListStudentSeamstersSummaryNoneType({
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data') required List? data,
  }) = _BaseResponseUnionListStudentSeamstersSummaryNoneType;

  factory BaseResponseUnionListStudentSeamstersSummaryNoneType.fromJson(
          Map<String, dynamic> json) =>
      _$BaseResponseUnionListStudentSeamstersSummaryNoneTypeFromJson(json);
}
