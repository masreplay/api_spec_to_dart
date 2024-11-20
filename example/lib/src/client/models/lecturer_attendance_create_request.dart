import 'package:freezed_annotation/freezed_annotation.dart';

part 'lecturer_attendance_create_request.freezed.dart';
part 'lecturer_attendance_create_request.g.dart';

@freezed
class LecturerAttendanceCreateRequest with _$LecturerAttendanceCreateRequest {
  const factory LecturerAttendanceCreateRequest({
    @JsonKey(name: 'weekly_schedule_id') required int weeklyScheduleId,
  }) = _LecturerAttendanceCreateRequest;

  factory LecturerAttendanceCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$LecturerAttendanceCreateRequestFromJson(json);
}
