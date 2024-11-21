import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'student_attendance_create.freezed.dart';
part 'student_attendance_create.g.dart';

@freezed
class StudentAttendanceCreate with _$StudentAttendanceCreate {
  const StudentAttendanceCreate._();

  @JsonSerializable(converters: convertors)
  const factory StudentAttendanceCreate({
    /// Attendance Id
    @JsonKey(name: 'attendance_id') required int attendanceId,
  }) = _StudentAttendanceCreate;

  factory StudentAttendanceCreate.fromJson(Map<String, dynamic> json) =>
      _$StudentAttendanceCreateFromJson(json);
}
