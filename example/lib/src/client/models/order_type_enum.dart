import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_type_enum.freezed.dart';
part 'order_type_enum.g.dart';

@freezed
class OrderTypeEnum with _$OrderTypeEnum {
  const factory OrderTypeEnum() = _OrderTypeEnum;

  factory OrderTypeEnum.fromJson(Map<String, dynamic> json) =>
      _$OrderTypeEnumFromJson(json);
}
