import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_method_enum.g.dart';

@JsonEnum(valueField: 'value', alwaysCreate: true)
enum PaymentMethodEnum {
  value0(0),
  value1(1),
  ;

  const PaymentMethodEnum(this.value);

  final int value;

  int toJson() => _$PaymentMethodEnumEnumMap[this]!;
  factory PaymentMethodEnum.fromJson(int value) {
    return values.firstWhere(
      (e) => e.value == value,
      orElse: () => values.first,
    );
  }
}
