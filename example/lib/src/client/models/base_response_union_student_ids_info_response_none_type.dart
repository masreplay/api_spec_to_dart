import 'package:freezed_annotation/freezed_annotation.dart';

import './models.dart';

part 'base_response_union_student_ids_info_response_none_type.freezed.dart';
part 'base_response_union_student_ids_info_response_none_type.g.dart';

@freezed
class BaseResponseUnionStudentIdsInfoResponseNoneType
    with _$BaseResponseUnionStudentIdsInfoResponseNoneType {
  const factory BaseResponseUnionStudentIdsInfoResponseNoneType({
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data') required StudentIdsInfoResponse? data,
  }) = _BaseResponseUnionStudentIdsInfoResponseNoneType;

  factory BaseResponseUnionStudentIdsInfoResponseNoneType.fromJson(
          Map<String, dynamic> json) =>
      _$BaseResponseUnionStudentIdsInfoResponseNoneTypeFromJson(json);
}
