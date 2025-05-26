/// CountryModel
/// {
///     "properties": {
///         "alpha2": {
///             "anyOf": [
///                 {
///                     "type": "string",
///                     "pattern": "^\\w{2}$"
///                 },
///                 {
///                     "type": "null"
///                 }
///             ],
///             "title": "Alpha2"
///         },
///         "alpha3": {
///             "anyOf": [
///                 {
///                     "type": "string",
///                     "pattern": "^\\w{3}$"
///                 },
///                 {
///                     "type": "null"
///                 }
///             ],
///             "title": "Alpha3"
///         },
///         "numeric": {
///             "anyOf": [
///                 {
///                     "type": "string",
///                     "pattern": "^[0-9]{3}$"
///                 },
///                 {
///                     "type": "null"
///                 }
///             ],
///             "title": "Numeric"
///         },
///         "short_name": {
///             "anyOf": [
///                 {
///                     "type": "string"
///                 },
///                 {
///                     "type": "null"
///                 }
///             ],
///             "title": "Short Name"
///         }
///     },
///     "type": "object",
///     "title": "CountryModel"
/// }
library country_model;

import 'exports.dart';
part 'country_model.freezed.dart';
part 'country_model.g.dart'; // CountryModel

@freezed
abstract class CountryModel with _$CountryModel {
  const CountryModel._();

  @jsonSerializable
  const factory CountryModel({
    /// alpha2
    @JsonKey(name: CountryModel.alpha2Key) required String? alpha2,

    /// alpha3
    @JsonKey(name: CountryModel.alpha3Key) required String? alpha3,

    /// numeric
    @JsonKey(name: CountryModel.numericKey) required String? numeric,

    /// shortName
    @JsonKey(name: CountryModel.shortNameKey) required String? shortName,
  }) = _CountryModel;

  factory CountryModel.fromJson(Map<String, dynamic> json) =>
      _$CountryModelFromJson(json);

  static const String alpha2Key = "alpha2";

  static const String alpha3Key = "alpha3";

  static const String numericKey = "numeric";

  static const String shortNameKey = "short_name";
}
