import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'order_type_enum.freezed.dart';
part 'order_type_enum.g.dart';

@freezed
class OrderTypeEnum with _$OrderTypeEnum {
  const OrderTypeEnum._();

  @JsonSerializable(converters: convertors)
  const factory OrderTypeEnum() = _OrderTypeEnum;

  factory OrderTypeEnum.fromJson(Map<String, dynamic> json) =>
      _$OrderTypeEnumFromJson(json);
}
