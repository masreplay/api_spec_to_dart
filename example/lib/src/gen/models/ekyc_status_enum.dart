import 'package:freezed_annotation/freezed_annotation.dart';

part 'ekyc_status_enum.g.dart';

@JsonEnum(valueField: 'value', alwaysCreate: true)
enum EkycStatusEnum {
  value0(0),
  value1(1),
  value2(2),
  ;

  const EkycStatusEnum(this.value);

  factory EkycStatusEnum.fromJson(int value) {
    return values.firstWhere(
      (e) => e.value == value,
      orElse: () => values.first,
    );
  }
  final int value;

  int toJson() => _$EkycStatusEnumEnumMap[this]!;
}
