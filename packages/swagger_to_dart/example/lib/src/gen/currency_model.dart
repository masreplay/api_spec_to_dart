library currency_model;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'convertors.dart';
part 'currency_model.freezed.dart';
part 'currency_model.g.dart'; // CurrencyModel

@freezed
abstract class CurrencyModel with _$CurrencyModel {
  const CurrencyModel._();

  const factory CurrencyModel(
    /// currency
    @JsonKey(name: currencyKey) String? currency,

    /// iso4217
    @JsonKey(name: iso4217Key) String? iso4217,
  ) = _CurrencyModel;

  factory CurrencyModel.fromJson(Map<String, dynamic> json) =>
      _$CurrencyModelFromJson(json);

  static const String currencyKey = "currency";

  static const String iso4217Key = "iso4217";
}
