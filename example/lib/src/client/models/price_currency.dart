import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'price_currency.freezed.dart';
part 'price_currency.g.dart';

@freezed
class PriceCurrency with _$PriceCurrency {
  const PriceCurrency._();

  @JsonSerializable(converters: convertors)
  const factory PriceCurrency() = _PriceCurrency;

  factory PriceCurrency.fromJson(Map<String, dynamic> json) =>
      _$PriceCurrencyFromJson(json);
}
