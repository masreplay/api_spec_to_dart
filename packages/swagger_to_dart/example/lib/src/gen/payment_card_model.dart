library;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'models.dart';
part 'payment_card_model.freezed.dart';
part 'payment_card_model.g.dart'; // PaymentCardModel

@freezed
abstract class PaymentCardModel with _$PaymentCardModel {
  const PaymentCardModel._();

  const factory PaymentCardModel({
    /// cardNumber
    @JsonKey(name: cardNumberKey) String cardNumber,

    /// cardBrand
    @JsonKey(name: cardBrandKey) PaymentCardBrand? cardBrand,
  }) = _PaymentCardModel;

  factory PaymentCardModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentCardModelFromJson(json);

  static const String cardNumberKey = "cardNumber";

  static const String cardBrandKey = "cardBrand";
}
