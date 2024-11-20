import 'package:freezed_annotation/freezed_annotation.dart';

part 'price_currency.freezed.dart';
part 'price_currency.g.dart';

@freezed
class PriceCurrency with _$PriceCurrency {
  const factory PriceCurrency() = _PriceCurrency;

  factory PriceCurrency.fromJson(Map<String, dynamic> json) =>
      _$PriceCurrencyFromJson(json);
}
