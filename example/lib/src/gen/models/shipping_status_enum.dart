import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipping_status_enum.g.dart';

@JsonEnum(valueField: 'value', alwaysCreate: true)
enum ShippingStatusEnum {
  pending('pending'),
  underProcess('under_process'),
  shipped('shipped'),
  ;

  const ShippingStatusEnum(this.value);

  final String value;

  String toJson() => _$ShippingStatusEnumEnumMap[this]!;
  factory ShippingStatusEnum.fromJson(String value) {
    return values.firstWhere(
      (e) => e.value == value,
      orElse: () => values.first,
    );
  }
}
