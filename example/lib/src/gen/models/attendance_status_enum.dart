import 'package:freezed_annotation/freezed_annotation.dart';

part 'attendance_status_enum.g.dart';

@JsonEnum(valueField: 'value', alwaysCreate: true)
enum AttendanceStatusEnum {
  value0(1),
  value1(2),
  value2(3),
  value3(4),
  ;

  const AttendanceStatusEnum(this.value);

  factory AttendanceStatusEnum.fromJson(int value) {
    return values.firstWhere(
      (e) => e.value == value,
      orElse: () => values.first,
    );
  }
  final int value;

  int toJson() => _$AttendanceStatusEnumEnumMap[this]!;
}
