import "package:freezed_annotation/freezed_annotation.dart";

import "convertors.dart";
import 'package:example/src/gen/models/models.dart';

part "country_model.freezed.dart";
part "country_model.g.dart";

/// CountryModel
@freezed
abstract class CountryModel with _$CountryModel {
  const CountryModel._();

  static const String alpha2Key = "alpha2";
  static const String alpha3Key = "alpha3";
  static const String numericKey = "numeric";
  static const String shortNameKey = "short_name";

  @JsonSerializable(converters: convertors)
  const factory CountryModel({
    /// Alpha2
    @JsonKey(name: CountryModel.alpha2Key) required String? alpha2,

    /// Alpha3
    @JsonKey(name: CountryModel.alpha3Key) required String? alpha3,

    /// Numeric
    @JsonKey(name: CountryModel.numericKey) required String? numeric,

    /// Short Name
    @JsonKey(name: CountryModel.shortNameKey) required String? shortName,
  }) = _CountryModel;

  factory CountryModel.fromJson(Map<String, dynamic> json) =>
      _$CountryModelFromJson(json);
}
