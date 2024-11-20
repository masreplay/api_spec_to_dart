import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'student_attendance_public.freezed.dart';
part 'student_attendance_public.g.dart';

@freezed
class StudentAttendancePublic with _$StudentAttendancePublic {
  const StudentAttendancePublic._();

  @JsonSerializable(converters: convertors)
  const factory StudentAttendancePublic({
    @JsonKey(name: 'attendance_status')

    /// Attendance Status
    required int attendanceStatus,
    @JsonKey(name: 'attendance_date')

    /// Attendance Date
    required DateTime attendanceDate,
    @JsonKey(name: 'id')

    /// Id
    required int id,
    @JsonKey(name: 'weekly_schedule_id')

    /// Weekly Schedule Id
    required int weeklyScheduleId,
  }) = _StudentAttendancePublic;

  factory StudentAttendancePublic.fromJson(Map<String, dynamic> json) =>
      _$StudentAttendancePublicFromJson(json);
}
