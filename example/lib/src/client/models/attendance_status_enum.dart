import 'package:freezed_annotation/freezed_annotation.dart';

part 'attendance_status_enum.freezed.dart';
part 'attendance_status_enum.g.dart';

@freezed
class AttendanceStatusEnum with _$AttendanceStatusEnum {
  const factory AttendanceStatusEnum() = _AttendanceStatusEnum;

  factory AttendanceStatusEnum.fromJson(Map<String, dynamic> json) =>
      _$AttendanceStatusEnumFromJson(json);
}
