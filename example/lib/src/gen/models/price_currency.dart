import 'package:freezed_annotation/freezed_annotation.dart';

part 'price_currency.g.dart';

///PriceCurrency

@JsonEnum(valueField: 'value', alwaysCreate: true)
enum PriceCurrency {
  iqd('IQD'),
  usd('USD'),
  ;

  const PriceCurrency(this.value);

  factory PriceCurrency.fromJson(String value) {
    return values.firstWhere(
      (e) => e.value == value,
      orElse: () => values.first,
    );
  }
  final String value;

  String toJson() => _$PriceCurrencyEnumMap[this]!;
}
