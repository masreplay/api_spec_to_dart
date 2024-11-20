import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'base_response_list_payment_method_public.freezed.dart';
part 'base_response_list_payment_method_public.g.dart';

@freezed
class BaseResponseListPaymentMethodPublic
    with _$BaseResponseListPaymentMethodPublic {
  const BaseResponseListPaymentMethodPublic._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseListPaymentMethodPublic({
    @JsonKey(name: 'message')

    /// Message
    required String? message,
    @JsonKey(name: 'data')

    /// Data
    required List data,
  }) = _BaseResponseListPaymentMethodPublic;

  factory BaseResponseListPaymentMethodPublic.fromJson(
          Map<String, dynamic> json) =>
      _$BaseResponseListPaymentMethodPublicFromJson(json);
}
