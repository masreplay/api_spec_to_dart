import 'package:freezed_annotation/freezed_annotation.dart';

part 'discount_type_enum.freezed.dart';
part 'discount_type_enum.g.dart';

@freezed
class DiscountTypeEnum with _$DiscountTypeEnum {
  const factory DiscountTypeEnum() = _DiscountTypeEnum;

  factory DiscountTypeEnum.fromJson(Map<String, dynamic> json) =>
      _$DiscountTypeEnumFromJson(json);
}
