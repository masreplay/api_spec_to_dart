import 'package:freezed_annotation/freezed_annotation.dart';

part 'lecturer_attendance_response.freezed.dart';
part 'lecturer_attendance_response.g.dart';

@freezed
class LecturerAttendanceResponse with _$LecturerAttendanceResponse {
  const factory LecturerAttendanceResponse({
    @JsonKey(name: 'issuing_date') required DateTime issuingDate,
    @JsonKey(name: 'expiration_date') required DateTime expirationDate,
  }) = _LecturerAttendanceResponse;

  factory LecturerAttendanceResponse.fromJson(Map<String, dynamic> json) =>
      _$LecturerAttendanceResponseFromJson(json);
}
