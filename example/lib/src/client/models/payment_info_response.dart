import 'package:freezed_annotation/freezed_annotation.dart';

import './models.dart';

part 'payment_info_response.freezed.dart';
part 'payment_info_response.g.dart';

@freezed
class PaymentInfoResponse with _$PaymentInfoResponse {
  const factory PaymentInfoResponse({
    @JsonKey(name: 'amount') required PaymentInfoAmount amount,
    @JsonKey(name: 'payment_methods') required List paymentMethods,
  }) = _PaymentInfoResponse;

  factory PaymentInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$PaymentInfoResponseFromJson(json);
}
