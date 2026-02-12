/// PaymentCardModel
/// {
///     "properties": {
///         "card_number": {
///             "type": "string",
///             "maxLength": 19,
///             "minLength": 12,
///             "title": "Card Number"
///         },
///         "card_brand": {
///             "anyOf": [
///                 {
///                     "$ref": "#/components/schemas/PaymentCardBrand"
///                 },
///                 {
///                     "type": "null"
///                 }
///             ]
///         }
///     },
///     "type": "object",
///     "required": [
///         "card_number"
///     ],
///     "title": "PaymentCardModel"
/// }
library payment_card_model;

import 'exports.dart';
part 'payment_card_model.freezed.dart';
part 'payment_card_model.g.dart'; // PaymentCardModel

@freezed
abstract class PaymentCardModel with _$PaymentCardModel {
  const PaymentCardModel._();

  @jsonSerializable
  const factory PaymentCardModel({
    /// cardNumber
    @JsonKey(name: PaymentCardModel.cardNumberKey_) required String cardNumber,

    /// cardBrand
    @JsonKey(name: PaymentCardModel.cardBrandKey_) PaymentCardBrand? cardBrand,
  }) = _PaymentCardModel;

  factory PaymentCardModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentCardModelFromJson(json);

  static const String cardNumberKey_ = r'card_number';

  static const String cardBrandKey_ = r'card_brand';
}
