import 'package:freezed_annotation/freezed_annotation.dart';

part 'student_course_status_enum.g.dart';

///StudentCourseStatusEnum

@JsonEnum(valueField: 'value', alwaysCreate: true)
enum StudentCourseStatusEnum {
  value0(0),
  value1(1),
  value2(2),
  value3(3),
  value4(4),
  ;

  const StudentCourseStatusEnum(this.value);

  factory StudentCourseStatusEnum.fromJson(int value) {
    return values.firstWhere(
      (e) => e.value == value,
      orElse: () => values.first,
    );
  }
  final int value;

  int toJson() => _$StudentCourseStatusEnumEnumMap[this]!;
}
