import 'package:freezed_annotation/freezed_annotation.dart';

import './models.dart';

part 'base_response_student_profile_info_response.freezed.dart';
part 'base_response_student_profile_info_response.g.dart';

@freezed
class BaseResponseStudentProfileInfoResponse
    with _$BaseResponseStudentProfileInfoResponse {
  const factory BaseResponseStudentProfileInfoResponse({
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data') required StudentProfileInfoResponse data,
  }) = _BaseResponseStudentProfileInfoResponse;

  factory BaseResponseStudentProfileInfoResponse.fromJson(
          Map<String, dynamic> json) =>
      _$BaseResponseStudentProfileInfoResponseFromJson(json);
}
