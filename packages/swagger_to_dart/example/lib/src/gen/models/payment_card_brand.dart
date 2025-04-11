import "package:freezed_annotation/freezed_annotation.dart";

part "payment_card_brand.g.dart";

/// PaymentCardBrand
/// Payment card brands supported by the [`PaymentCardNumber`][pydantic_extra_types.payment.PaymentCardNumber].
@JsonEnum(valueField: "value", alwaysCreate: true)
enum PaymentCardBrand {
  americanExpress('American Express'),
  mastercard('Mastercard'),
  visa('Visa'),
  mir('Mir'),
  maestro('Maestro'),
  discover('Discover'),
  verve('Verve'),
  dankort('Dankort'),
  troy('Troy'),
  unionPay('UnionPay'),
  jcb('JCB'),
  other('other');

  const PaymentCardBrand(this.value);

  factory PaymentCardBrand.fromJson(String value) {
    return values.firstWhere(
      (e) => e.value == value,
      orElse: () => values.first,
    );
  }
  final String value;

  String toJson() => _$PaymentCardBrandEnumMap[this]!;
}
