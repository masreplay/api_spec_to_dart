import 'package:freezed_annotation/freezed_annotation.dart';

part 'gender_enum.g.dart';

///GenderEnum

@JsonEnum(valueField: 'value', alwaysCreate: true)
enum GenderEnum {
  value0(1),
  value1(2),
  ;

  const GenderEnum(this.value);

  factory GenderEnum.fromJson(int value) {
    return values.firstWhere(
      (e) => e.value == value,
      orElse: () => values.first,
    );
  }
  final int value;

  int toJson() => _$GenderEnumEnumMap[this]!;
}
