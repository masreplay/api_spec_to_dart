import "package:freezed_annotation/freezed_annotation.dart";

import "convertors.dart";
import 'package:example/src/gen/models/models.dart';

part "language_model.freezed.dart";
part "language_model.g.dart";

/// LanguageModel
@freezed
abstract class LanguageModel with _$LanguageModel {
  const LanguageModel._();

  static const String alpha2Key = "alpha2";
  static const String nameKey = "name";
  static const String iso6393Key = "iso639_3";
  static const String iso6395Key = "iso639_5";

  @JsonSerializable(converters: convertors)
  const factory LanguageModel({
    /// Alpha2
    @JsonKey(name: LanguageModel.alpha2Key) required String? alpha2,

    /// Name
    @JsonKey(name: LanguageModel.nameKey) required String? name,

    /// Iso639 3
    @JsonKey(name: LanguageModel.iso6393Key) required String? iso6393,

    /// Iso639 5
    @JsonKey(name: LanguageModel.iso6395Key) required String? iso6395,
  }) = _LanguageModel;

  factory LanguageModel.fromJson(Map<String, dynamic> json) =>
      _$LanguageModelFromJson(json);
}
