import 'package:freezed_annotation/freezed_annotation.dart';

import './models.dart';

part 'base_response_student_personal_info_response.freezed.dart';
part 'base_response_student_personal_info_response.g.dart';

@freezed
class BaseResponseStudentPersonalInfoResponse
    with _$BaseResponseStudentPersonalInfoResponse {
  const factory BaseResponseStudentPersonalInfoResponse({
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data') required StudentPersonalInfoResponse data,
  }) = _BaseResponseStudentPersonalInfoResponse;

  factory BaseResponseStudentPersonalInfoResponse.fromJson(
          Map<String, dynamic> json) =>
      _$BaseResponseStudentPersonalInfoResponseFromJson(json);
}
