import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_response_list_student_attendance_public.freezed.dart';
part 'base_response_list_student_attendance_public.g.dart';

@freezed
class BaseResponseListStudentAttendancePublic
    with _$BaseResponseListStudentAttendancePublic {
  const factory BaseResponseListStudentAttendancePublic({
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data') required List data,
  }) = _BaseResponseListStudentAttendancePublic;

  factory BaseResponseListStudentAttendancePublic.fromJson(
          Map<String, dynamic> json) =>
      _$BaseResponseListStudentAttendancePublicFromJson(json);
}
