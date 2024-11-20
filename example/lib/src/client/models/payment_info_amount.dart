import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_info_amount.freezed.dart';
part 'payment_info_amount.g.dart';

@freezed
class PaymentInfoAmount with _$PaymentInfoAmount {
  const factory PaymentInfoAmount({
    @JsonKey(name: 'total') required int total,
    @JsonKey(name: 'tax') required int tax,
    @JsonKey(name: 'cost') required int cost,
  }) = _PaymentInfoAmount;

  factory PaymentInfoAmount.fromJson(Map<String, dynamic> json) =>
      _$PaymentInfoAmountFromJson(json);
}
