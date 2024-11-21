import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'payment_info_response.freezed.dart';
part 'payment_info_response.g.dart';

///PaymentInfoResponse

@freezed
class PaymentInfoResponse with _$PaymentInfoResponse {
  const PaymentInfoResponse._();

  @JsonSerializable(converters: convertors)
  const factory PaymentInfoResponse({
    @JsonKey(name: 'amount') required PaymentInfoAmount amount,

    /// Payment Methods
    @JsonKey(name: 'payment_methods')
    required List<PaymentMethodPublic> paymentMethods,
  }) = _PaymentInfoResponse;

  factory PaymentInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$PaymentInfoResponseFromJson(json);
}
