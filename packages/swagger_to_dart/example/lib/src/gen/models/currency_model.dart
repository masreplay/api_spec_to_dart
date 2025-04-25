import 'package:freezed_annotation/freezed_annotation.dart';
import 'convertors.dart';
import 'package:example/src/gen/models/models.dart';
part 'currency_model.freezed.dart';
part 'currency_model.g.dart';

/// CurrencyModel
@freezed
abstract class CurrencyModel with _$CurrencyModel {
  @JsonSerializable(converters: Convertors.convertors)
  const factory CurrencyModel({
    required String? currency,
    required String? iso4217,
  }) = _CurrencyModel;

  factory CurrencyModel.fromJson(Map<String, dynamic> json) =>
      _$CurrencyModelFromJson(json);
}
