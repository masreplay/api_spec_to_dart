import 'package:freezed_annotation/freezed_annotation.dart';

part 'student_attendance_create.freezed.dart';
part 'student_attendance_create.g.dart';

@freezed
class StudentAttendanceCreate with _$StudentAttendanceCreate {
  const factory StudentAttendanceCreate({
    @JsonKey(name: 'attendance_id') required int attendanceId,
  }) = _StudentAttendanceCreate;

  factory StudentAttendanceCreate.fromJson(Map<String, dynamic> json) =>
      _$StudentAttendanceCreateFromJson(json);
}
