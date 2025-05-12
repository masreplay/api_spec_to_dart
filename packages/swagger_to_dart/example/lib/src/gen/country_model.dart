library country_model;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'convertors.dart';
part 'country_model.freezed.dart';
part 'country_model.g.dart'; // CountryModel

@freezed
abstract class CountryModel with _$CountryModel {
  const CountryModel._();

  const factory CountryModel(
    /// alpha2
    @JsonKey(name: alpha2Key) String? alpha2,

    /// alpha3
    @JsonKey(name: alpha3Key) String? alpha3,

    /// numeric
    @JsonKey(name: numericKey) String? numeric,

    /// shortName
    @JsonKey(name: shortNameKey) String? shortName,
  ) = _CountryModel;

  factory CountryModel.fromJson(Map<String, dynamic> json) =>
      _$CountryModelFromJson(json);

  static const String alpha2Key = "alpha2";

  static const String alpha3Key = "alpha3";

  static const String numericKey = "numeric";

  static const String shortNameKey = "shortName";
}
