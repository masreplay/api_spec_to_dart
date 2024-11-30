import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'base_response_union_student_school_info_response_.freezed.dart';
part 'base_response_union_student_school_info_response_.g.dart';

///BaseResponse_Union_StudentSchoolInfoResponse__NoneType__

@freezed
class BaseResponseUnionStudentSchoolInfoResponse
    with _$BaseResponseUnionStudentSchoolInfoResponse {
  const BaseResponseUnionStudentSchoolInfoResponse._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseUnionStudentSchoolInfoResponse({
    /// Message
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data') required StudentSchoolInfoResponse? data,
  }) = _BaseResponseUnionStudentSchoolInfoResponse;

  factory BaseResponseUnionStudentSchoolInfoResponse.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$BaseResponseUnionStudentSchoolInfoResponseFromJson(
        json,
      );
}
