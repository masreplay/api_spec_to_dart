import 'package:freezed_annotation/freezed_annotation.dart';

part 'assignment_type_enum.g.dart';

@JsonEnum(valueField: 'value', alwaysCreate: true)
enum AssignmentTypeEnum {
  value0(1),
  value1(2),
  value2(3),
  value3(4),
  value4(5),
  value5(6),
  value6(7),
  value7(8),
  value8(9),
  value9(10),
  value10(11),
  value11(12),
  value12(13),
  value13(14),
  value14(15),
  ;

  const AssignmentTypeEnum(this.value);

  factory AssignmentTypeEnum.fromJson(int value) {
    return values.firstWhere(
      (e) => e.value == value,
      orElse: () => values.first,
    );
  }
  final int value;

  int toJson() => _$AssignmentTypeEnumEnumMap[this]!;
}
