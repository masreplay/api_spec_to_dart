import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import './models.dart';

part 'base_response_payment_info_response.freezed.dart';
part 'base_response_payment_info_response.g.dart';

@freezed
class BaseResponsePaymentInfoResponse with _$BaseResponsePaymentInfoResponse {
  const BaseResponsePaymentInfoResponse._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponsePaymentInfoResponse({
    @JsonKey(name: 'message')

    /// Message
    required String? message,
    @JsonKey(name: 'data') required PaymentInfoResponse data,
  }) = _BaseResponsePaymentInfoResponse;

  factory BaseResponsePaymentInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseResponsePaymentInfoResponseFromJson(json);
}
