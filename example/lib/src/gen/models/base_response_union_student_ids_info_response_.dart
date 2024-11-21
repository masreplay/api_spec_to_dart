import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'base_response_union_student_ids_info_response_.freezed.dart';
part 'base_response_union_student_ids_info_response_.g.dart';

@freezed
class BaseResponseUnionStudentIdsInfoResponse
    with _$BaseResponseUnionStudentIdsInfoResponse {
  const BaseResponseUnionStudentIdsInfoResponse._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseUnionStudentIdsInfoResponse({
    /// Message
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data') required StudentIdsInfoResponse? data,
  }) = _BaseResponseUnionStudentIdsInfoResponse;

  factory BaseResponseUnionStudentIdsInfoResponse.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$BaseResponseUnionStudentIdsInfoResponseFromJson(json);
}
