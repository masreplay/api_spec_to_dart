import 'package:freezed_annotation/freezed_annotation.dart';

part 'discount_type_enum.g.dart';

@JsonEnum(valueField: 'value', alwaysCreate: true)
enum DiscountTypeEnum {
  percentage('percentage'),
  amount('amount'),
  value0('0'),
  ;

  const DiscountTypeEnum(this.value);

  factory DiscountTypeEnum.fromJson(String value) {
    return values.firstWhere(
      (e) => e.value == value,
      orElse: () => values.first,
    );
  }
  final String value;

  String toJson() => _$DiscountTypeEnumEnumMap[this]!;
}
