import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'payment_info_amount.freezed.dart';
part 'payment_info_amount.g.dart';

///PaymentInfoAmount

@freezed
class PaymentInfoAmount with _$PaymentInfoAmount {
  const PaymentInfoAmount._();

  @JsonSerializable(converters: convertors)
  const factory PaymentInfoAmount({
    /// Total
    @JsonKey(name: 'total') required int total,

    /// Tax
    @JsonKey(name: 'tax') required int tax,

    /// Cost
    @JsonKey(name: 'cost') required int cost,
  }) = _PaymentInfoAmount;

  factory PaymentInfoAmount.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$PaymentInfoAmountFromJson(
        json,
      );
}
