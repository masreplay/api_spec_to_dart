import 'package:freezed_annotation/freezed_annotation.dart';

part 'selected_course_result_enum.g.dart';

///SelectedCourseResultEnum

@JsonEnum(valueField: 'value', alwaysCreate: true)
enum SelectedCourseResultEnum {
  value0(1),
  value1(2),
  value2(3),
  value3(4),
  value4(5),
  value5(6),
  ;

  const SelectedCourseResultEnum(this.value);

  factory SelectedCourseResultEnum.fromJson(int value) {
    return values.firstWhere(
      (e) => e.value == value,
      orElse: () => values.first,
    );
  }
  final int value;

  int toJson() => _$SelectedCourseResultEnumEnumMap[this]!;
}
