import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'base_response_list_student_attendance_public.freezed.dart';
part 'base_response_list_student_attendance_public.g.dart';

@freezed
class BaseResponseListStudentAttendancePublic
    with _$BaseResponseListStudentAttendancePublic {
  const BaseResponseListStudentAttendancePublic._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseListStudentAttendancePublic({
    /// Message
    @JsonKey(name: 'message') required String? message,

    /// Data
    @JsonKey(name: 'data') required List<StudentAttendancePublic> data,
  }) = _BaseResponseListStudentAttendancePublic;

  factory BaseResponseListStudentAttendancePublic.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$BaseResponseListStudentAttendancePublicFromJson(json);
}
