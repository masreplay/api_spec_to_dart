import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'shipping_status_enum.freezed.dart';
part 'shipping_status_enum.g.dart';

@freezed
class ShippingStatusEnum with _$ShippingStatusEnum {
  const ShippingStatusEnum._();

  @JsonSerializable(converters: convertors)
  const factory ShippingStatusEnum() = _ShippingStatusEnum;

  factory ShippingStatusEnum.fromJson(Map<String, dynamic> json) =>
      _$ShippingStatusEnumFromJson(json);
}
