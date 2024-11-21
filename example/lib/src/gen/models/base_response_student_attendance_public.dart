import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'base_response_student_attendance_public.freezed.dart';
part 'base_response_student_attendance_public.g.dart';

///BaseResponse_StudentAttendancePublic_

@freezed
class BaseResponseStudentAttendancePublic
    with _$BaseResponseStudentAttendancePublic {
  const BaseResponseStudentAttendancePublic._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseStudentAttendancePublic({
    /// Message
    @JsonKey(name: 'message') required String? message,
    @JsonKey(name: 'data') required StudentAttendancePublic data,
  }) = _BaseResponseStudentAttendancePublic;

  factory BaseResponseStudentAttendancePublic.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$BaseResponseStudentAttendancePublicFromJson(json);
}
