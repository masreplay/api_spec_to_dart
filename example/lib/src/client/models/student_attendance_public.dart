import 'package:freezed_annotation/freezed_annotation.dart';

part 'student_attendance_public.freezed.dart';
part 'student_attendance_public.g.dart';

@freezed
class StudentAttendancePublic with _$StudentAttendancePublic {
  const factory StudentAttendancePublic({
    @JsonKey(name: 'attendance_status') required int attendanceStatus,
    @JsonKey(name: 'attendance_date') required DateTime attendanceDate,
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'weekly_schedule_id') required int weeklyScheduleId,
  }) = _StudentAttendancePublic;

  factory StudentAttendancePublic.fromJson(Map<String, dynamic> json) =>
      _$StudentAttendancePublicFromJson(json);
}
