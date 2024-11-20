import 'package:freezed_annotation/freezed_annotation.dart';

import './models.dart';

part 'payment_method_public.freezed.dart';
part 'payment_method_public.g.dart';

@freezed
class PaymentMethodPublic with _$PaymentMethodPublic {
  const factory PaymentMethodPublic({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'description') required String description,
    @JsonKey(name: 'url') required String url,
    @JsonKey(name: 'image') required String image,
    @JsonKey(name: 'type') required PaymentMethodEnum type,
  }) = _PaymentMethodPublic;

  factory PaymentMethodPublic.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodPublicFromJson(json);
}
