import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_status_enum.g.dart';

///OrderStatusEnum

@JsonEnum(valueField: 'value', alwaysCreate: true)
enum OrderStatusEnum {
  pending('pending'),
  approved('approved'),
  rejected('rejected'),
  ;

  const OrderStatusEnum(this.value);

  factory OrderStatusEnum.fromJson(String value) {
    return values.firstWhere(
      (e) => e.value == value,
      orElse: () => values.first,
    );
  }
  final String value;

  String toJson() => _$OrderStatusEnumEnumMap[this]!;
}
