import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'lecturer_attendance_create_request.freezed.dart';
part 'lecturer_attendance_create_request.g.dart';

@freezed
class LecturerAttendanceCreateRequest with _$LecturerAttendanceCreateRequest {
  const LecturerAttendanceCreateRequest._();

  @JsonSerializable(converters: convertors)
  const factory LecturerAttendanceCreateRequest({
    /// Weekly Schedule Id
    @JsonKey(name: 'weekly_schedule_id') required int weeklyScheduleId,
  }) = _LecturerAttendanceCreateRequest;

  factory LecturerAttendanceCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$LecturerAttendanceCreateRequestFromJson(json);
}
