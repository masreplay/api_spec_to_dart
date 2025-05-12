library;

import 'exports.dart';
part 'currency_model.freezed.dart';
part 'currency_model.g.dart'; // CurrencyModel

@freezed
abstract class CurrencyModel with _$CurrencyModel {
  const CurrencyModel._();

  const factory CurrencyModel({
    /// currency
    @JsonKey(name: CurrencyModel.currencyKey) required String? currency,

    /// iso4217
    @JsonKey(name: CurrencyModel.iso4217Key) required String? iso4217,
  }) = _CurrencyModel;

  factory CurrencyModel.fromJson(Map<String, dynamic> json) =>
      _$CurrencyModelFromJson(json);

  static const String currencyKey = "currency";

  static const String iso4217Key = "iso4217";
}
