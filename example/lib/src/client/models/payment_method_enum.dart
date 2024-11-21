import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'payment_method_enum.freezed.dart';
part 'payment_method_enum.g.dart';

@freezed
class PaymentMethodEnum with _$PaymentMethodEnum {
  const PaymentMethodEnum._();

  @JsonSerializable(converters: convertors)
  const factory PaymentMethodEnum() = _PaymentMethodEnum;

  factory PaymentMethodEnum.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodEnumFromJson(json);
}
