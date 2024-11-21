import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'student_attendance_public.freezed.dart';
part 'student_attendance_public.g.dart';

@freezed
class StudentAttendancePublic with _$StudentAttendancePublic {
  const StudentAttendancePublic._();

  @JsonSerializable(converters: convertors)
  const factory StudentAttendancePublic({
    /// Attendance Status
    @JsonKey(name: 'attendance_status') required int attendanceStatus,

    /// Attendance Date
    @JsonKey(name: 'attendance_date') required DateTime attendanceDate,

    /// Id
    @JsonKey(name: 'id') required int id,

    /// Weekly Schedule Id
    @JsonKey(name: 'weekly_schedule_id') required int weeklyScheduleId,
  }) = _StudentAttendancePublic;

  factory StudentAttendancePublic.fromJson(Map<String, dynamic> json) =>
      _$StudentAttendancePublicFromJson(json);
}
