import 'package:freezed_annotation/freezed_annotation.dart';

part 'student_request_status.freezed.dart';
part 'student_request_status.g.dart';

@freezed
class StudentRequestStatus with _$StudentRequestStatus {
  const factory StudentRequestStatus() = _StudentRequestStatus;

  factory StudentRequestStatus.fromJson(Map<String, dynamic> json) =>
      _$StudentRequestStatusFromJson(json);
}
