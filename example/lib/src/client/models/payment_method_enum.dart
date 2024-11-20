import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_method_enum.freezed.dart';
part 'payment_method_enum.g.dart';

@freezed
class PaymentMethodEnum with _$PaymentMethodEnum {
  const factory PaymentMethodEnum() = _PaymentMethodEnum;

  factory PaymentMethodEnum.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodEnumFromJson(json);
}
