// PaymentCardBrand
// {
//     "type": "string",
//     "enum": [
//         "American Express",
//         "Mastercard",
//         "Visa",
//         "Mir",
//         "Maestro",
//         "Discover",
//         "Verve",
//         "Dankort",
//         "Troy",
//         "UnionPay",
//         "JCB",
//         "other"
//     ],
//     "title": "PaymentCardBrand",
//     "description": "Payment card brands supported by the [`PaymentCardNumber`][pydantic_extra_types.payment.PaymentCardNumber]."
// }

library payment_card_brand;

import 'exports.dart';

part 'payment_card_brand.g.dart';

@JsonEnum(alwaysCreate: true)
enum PaymentCardBrand {
  @JsonValue("American Express")
  americanExpress,
  @JsonValue("Mastercard")
  mastercard,
  @JsonValue("Visa")
  visa,
  @JsonValue("Mir")
  mir,
  @JsonValue("Maestro")
  maestro,
  @JsonValue("Discover")
  discover,
  @JsonValue("Verve")
  verve,
  @JsonValue("Dankort")
  dankort,
  @JsonValue("Troy")
  troy,
  @JsonValue("UnionPay")
  unionPay,
  @JsonValue("JCB")
  jcb,
  @JsonValue("other")
  other;

  String toJson() => _$PaymentCardBrandEnumMap[this]!;
}
