import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'order_status_enum.freezed.dart';
part 'order_status_enum.g.dart';

@freezed
class OrderStatusEnum with _$OrderStatusEnum {
  const OrderStatusEnum._();

  @JsonSerializable(converters: convertors)
  const factory OrderStatusEnum() = _OrderStatusEnum;

  factory OrderStatusEnum.fromJson(Map<String, dynamic> json) =>
      _$OrderStatusEnumFromJson(json);
}
