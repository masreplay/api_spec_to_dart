import 'package:freezed_annotation/freezed_annotation.dart';

part 'assignment_classification_enum.g.dart';

@JsonEnum(valueField: 'value', alwaysCreate: true)
enum AssignmentClassificationEnum {
  value0(0),
  value1(1),
  ;

  const AssignmentClassificationEnum(this.value);

  final int value;

  int toJson() => _$AssignmentClassificationEnumEnumMap[this]!;
  factory AssignmentClassificationEnum.fromJson(int value) {
    return values.firstWhere(
      (e) => e.value == value,
      orElse: () => values.first,
    );
  }
}
