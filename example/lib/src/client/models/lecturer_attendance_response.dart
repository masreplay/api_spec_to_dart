import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'lecturer_attendance_response.freezed.dart';
part 'lecturer_attendance_response.g.dart';

@freezed
class LecturerAttendanceResponse with _$LecturerAttendanceResponse {
  const LecturerAttendanceResponse._();

  @JsonSerializable(converters: convertors)
  const factory LecturerAttendanceResponse({
    /// Issuing Date
    @JsonKey(name: 'issuing_date') required DateTime issuingDate,

    /// Expiration Date
    @JsonKey(name: 'expiration_date') required DateTime expirationDate,
  }) = _LecturerAttendanceResponse;

  factory LecturerAttendanceResponse.fromJson(Map<String, dynamic> json) =>
      _$LecturerAttendanceResponseFromJson(json);
}
