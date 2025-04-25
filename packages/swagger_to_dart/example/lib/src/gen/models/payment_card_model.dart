import 'package:freezed_annotation/freezed_annotation.dart';
import 'convertors.dart';
import 'package:example/src/gen/models/models.dart';
part 'payment_card_model.freezed.dart';
part 'payment_card_model.g.dart';

/// PaymentCardModel
@freezed
abstract class PaymentCardModel with _$PaymentCardModel {
  @JsonSerializable(converters: Convertors.convertors)
  const factory PaymentCardModel({
    required String cardNumber,
    required PaymentCardBrand? cardBrand,
  }) = _PaymentCardModel;

  factory PaymentCardModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentCardModelFromJson(json);
}
