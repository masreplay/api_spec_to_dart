import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'attendance_status_enum.freezed.dart';
part 'attendance_status_enum.g.dart';

@freezed
class AttendanceStatusEnum with _$AttendanceStatusEnum {
  const AttendanceStatusEnum._();

  @JsonSerializable(converters: convertors)
  const factory AttendanceStatusEnum() = _AttendanceStatusEnum;

  factory AttendanceStatusEnum.fromJson(Map<String, dynamic> json) =>
      _$AttendanceStatusEnumFromJson(json);
}
