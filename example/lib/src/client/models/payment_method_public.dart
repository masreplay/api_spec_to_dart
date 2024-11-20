import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import './models.dart';

part 'payment_method_public.freezed.dart';
part 'payment_method_public.g.dart';

@freezed
class PaymentMethodPublic with _$PaymentMethodPublic {
  const PaymentMethodPublic._();

  @JsonSerializable(converters: convertors)
  const factory PaymentMethodPublic({
    @JsonKey(name: 'id')

    /// Id
    required int id,
    @JsonKey(name: 'name')

    /// Name
    required String name,
    @JsonKey(name: 'description')

    /// Description
    required String description,
    @JsonKey(name: 'url')

    /// Url
    required String url,
    @JsonKey(name: 'image')

    /// Image
    required String image,
    @JsonKey(name: 'type') required PaymentMethodEnum type,
  }) = _PaymentMethodPublic;

  factory PaymentMethodPublic.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodPublicFromJson(json);
}
