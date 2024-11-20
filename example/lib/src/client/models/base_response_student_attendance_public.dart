import 'package:freezed_annotation/freezed_annotation.dart';

import './models.dart';

part 'base_response_student_attendance_public.freezed.dart';
part 'base_response_student_attendance_public.g.dart';

@freezed
class BaseResponseStudentAttendancePublic
    with _$BaseResponseStudentAttendancePublic {
  const factory BaseResponseStudentAttendancePublic({
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data') required StudentAttendancePublic data,
  }) = _BaseResponseStudentAttendancePublic;

  factory BaseResponseStudentAttendancePublic.fromJson(
          Map<String, dynamic> json) =>
      _$BaseResponseStudentAttendancePublicFromJson(json);
}
