import "package:freezed_annotation/freezed_annotation.dart";

import 'package:example/src/gen/models/models.dart';

part "payment_card_model.freezed.dart";
part "payment_card_model.g.dart";

/// PaymentCardModel
@freezed
abstract class PaymentCardModel with _$PaymentCardModel {
  const PaymentCardModel._();

  static const String cardNumberKey = "card_number";
  static const String cardBrandKey = "card_brand";

  @JsonSerializable(converters: convertors)
  const factory PaymentCardModel({
    /// card_number
    @JsonKey(name: PaymentCardModel.cardNumberKey) required String cardNumber,
    @JsonKey(name: PaymentCardModel.cardBrandKey)
    required PaymentCardBrand? cardBrand,
  }) = _PaymentCardModel;

  factory PaymentCardModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentCardModelFromJson(json);
}
