import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'base_response_student_profile_info_response.freezed.dart';
part 'base_response_student_profile_info_response.g.dart';

///BaseResponse_StudentProfileInfoResponse_

@freezed
class BaseResponseStudentProfileInfoResponse
    with _$BaseResponseStudentProfileInfoResponse {
  const BaseResponseStudentProfileInfoResponse._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseStudentProfileInfoResponse({
    /// Message
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data') required StudentProfileInfoResponse data,
  }) = _BaseResponseStudentProfileInfoResponse;

  factory BaseResponseStudentProfileInfoResponse.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$BaseResponseStudentProfileInfoResponseFromJson(
        json,
      );
}
