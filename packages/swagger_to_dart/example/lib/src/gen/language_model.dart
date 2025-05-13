library language_model;

import 'exports.dart';
part 'language_model.freezed.dart';
part 'language_model.g.dart'; // LanguageModel

@freezed
abstract class LanguageModel with _$LanguageModel {
  const LanguageModel._();

  const factory LanguageModel({
    /// alpha2
    @JsonKey(name: LanguageModel.alpha2Key) required String? alpha2,

    /// name
    @JsonKey(name: LanguageModel.nameKey) required String? name,

    /// iso6393
    @JsonKey(name: LanguageModel.iso6393Key) required String? iso6393,

    /// iso6395
    @JsonKey(name: LanguageModel.iso6395Key) required String? iso6395,
  }) = _LanguageModel;

  factory LanguageModel.fromJson(Map<String, dynamic> json) =>
      _$LanguageModelFromJson(json);

  static const String alpha2Key = "alpha2";

  static const String nameKey = "name";

  static const String iso6393Key = "iso6393";

  static const String iso6395Key = "iso6395";
}
