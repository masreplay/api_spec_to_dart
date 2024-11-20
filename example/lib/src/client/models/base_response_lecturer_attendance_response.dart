import 'package:freezed_annotation/freezed_annotation.dart';

import './models.dart';

part 'base_response_lecturer_attendance_response.freezed.dart';
part 'base_response_lecturer_attendance_response.g.dart';

@freezed
class BaseResponseLecturerAttendanceResponse
    with _$BaseResponseLecturerAttendanceResponse {
  const factory BaseResponseLecturerAttendanceResponse({
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data') required LecturerAttendanceResponse data,
  }) = _BaseResponseLecturerAttendanceResponse;

  factory BaseResponseLecturerAttendanceResponse.fromJson(
          Map<String, dynamic> json) =>
      _$BaseResponseLecturerAttendanceResponseFromJson(json);
}
