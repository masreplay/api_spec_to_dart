import 'package:freezed_annotation/freezed_annotation.dart';

part 'citizenship_type_enum.g.dart';

///CitizenshipTypeEnum

@JsonEnum(valueField: 'value', alwaysCreate: true)
enum CitizenshipTypeEnum {
  value0(1),
  value1(2),
  ;

  const CitizenshipTypeEnum(this.value);

  factory CitizenshipTypeEnum.fromJson(int value) {
    return values.firstWhere(
      (e) => e.value == value,
      orElse: () => values.first,
    );
  }
  final int value;

  int toJson() => _$CitizenshipTypeEnumEnumMap[this]!;
}
