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
    @JsonKey(name: CountryModel.alpha2Key_) String? alpha2,

    /// alpha3
    @JsonKey(name: CountryModel.alpha3Key_) String? alpha3,

    /// numeric
    @JsonKey(name: CountryModel.numericKey_) String? numeric,

    /// shortName
    @JsonKey(name: CountryModel.shortNameKey_) String? shortName,
  }) = _CountryModel;

  factory CountryModel.fromJson(Map<String, dynamic> json) =>
      _$CountryModelFromJson(json);

  static const String alpha2Key_ = r'alpha2';

  static const String alpha3Key_ = r'alpha3';

  static const String numericKey_ = r'numeric';

  static const String shortNameKey_ = r'short_name';
}
