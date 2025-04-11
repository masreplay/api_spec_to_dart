import "package:freezed_annotation/freezed_annotation.dart";

import "convertors.dart";
import 'package:example/src/gen/models/models.dart';

part "currency_model.freezed.dart";
part "currency_model.g.dart";

/// CurrencyModel
@freezed
abstract class CurrencyModel with _$CurrencyModel {
  const CurrencyModel._();

  static const String currencyKey = "currency";
  static const String iso4217Key = "iso4217";

  @JsonSerializable(converters: convertors)
  const factory CurrencyModel({
    /// Currency
    @JsonKey(name: CurrencyModel.currencyKey) required String? currency,

    /// Iso4217
    @JsonKey(name: CurrencyModel.iso4217Key) required String? iso4217,
  }) = _CurrencyModel;

  factory CurrencyModel.fromJson(Map<String, dynamic> json) =>
      _$CurrencyModelFromJson(json);
}
