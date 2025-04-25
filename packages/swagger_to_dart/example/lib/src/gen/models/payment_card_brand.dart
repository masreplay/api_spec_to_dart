import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:example/src/gen/models/models.dart';
part 'payment_card_brand.g.dart';

@JsonEnum(valueField: "value", alwaysCreate: true)
enum PaymentCardBrand {
  valueMastercard('Mastercard'),
  valueVisa('Visa'),
  valueMir('Mir'),
  valueMaestro('Maestro'),
  valueDiscover('Discover'),
  valueVerve('Verve'),
  valueDankort('Dankort'),
  valueTroy('Troy'),
  valueUnionPay('UnionPay'),
  valueJCB('JCB'),
  valueother('other');

  const PaymentCardBrand(this.value);

  final String value;

  String toJson() => _$PaymentCardBrandEnumMap[this]!;
}
