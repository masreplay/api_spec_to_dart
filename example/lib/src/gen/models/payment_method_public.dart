import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'payment_method_public.freezed.dart';
part 'payment_method_public.g.dart';

///PaymentMethodPublic

@freezed
class PaymentMethodPublic with _$PaymentMethodPublic {
  const PaymentMethodPublic._();

  @JsonSerializable(converters: convertors)
  const factory PaymentMethodPublic({
    /// Id
    @JsonKey(name: 'id') required int id,

    /// Name
    @JsonKey(name: 'name') required String name,

    /// Description
    @JsonKey(name: 'description') required String description,

    /// Url
    @JsonKey(name: 'url') required String url,

    /// Image
    @JsonKey(name: 'image') required String image,
    @JsonKey(name: 'type') required PaymentMethodEnum type,
  }) = _PaymentMethodPublic;

  factory PaymentMethodPublic.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodPublicFromJson(json);
}
