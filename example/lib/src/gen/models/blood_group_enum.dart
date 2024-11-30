import 'package:freezed_annotation/freezed_annotation.dart';

part 'blood_group_enum.g.dart';

///BloodGroupEnum

@JsonEnum(valueField: 'value', alwaysCreate: true)
enum BloodGroupEnum {
  value0(1),
  value1(2),
  value2(3),
  value3(4),
  value4(5),
  value5(6),
  value6(7),
  value7(8),
  ;

  const BloodGroupEnum(this.value);

  factory BloodGroupEnum.fromJson(int value) {
    return values.firstWhere(
      (e) => e.value == value,
      orElse: () => values.first,
    );
  }
  final int value;

  int toJson() => _$BloodGroupEnumEnumMap[this]!;
}
