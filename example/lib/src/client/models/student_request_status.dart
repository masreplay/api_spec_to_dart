import 'package:freezed_annotation/freezed_annotation.dart';

part 'student_request_status.g.dart';

@JsonEnum(valueField: 'value', alwaysCreate: true)
enum StudentRequestStatus {
  value0(0),
  value1(1),
  value2(2),
  value3(3),
  value4(4),
  ;

  const StudentRequestStatus(this.value);

  final int value;

  int toJson() => _$StudentRequestStatusEnumMap[this]!;
  factory StudentRequestStatus.fromJson(int value) {
    return values.firstWhere(
      (e) => e.value == value,
      orElse: () => values.first,
    );
  }
}
