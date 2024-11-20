import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'student_request_status.freezed.dart';
part 'student_request_status.g.dart';

@freezed
class StudentRequestStatus with _$StudentRequestStatus {
  const StudentRequestStatus._();

  @JsonSerializable(converters: convertors)
  const factory StudentRequestStatus() = _StudentRequestStatus;

  factory StudentRequestStatus.fromJson(Map<String, dynamic> json) =>
      _$StudentRequestStatusFromJson(json);
}
