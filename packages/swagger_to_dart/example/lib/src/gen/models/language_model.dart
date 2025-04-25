import 'package:freezed_annotation/freezed_annotation.dart';
import 'convertors.dart';
import 'package:example/src/gen/models/models.dart';
part 'language_model.freezed.dart';
part 'language_model.g.dart';

/// LanguageModel
@freezed
abstract class LanguageModel with _$LanguageModel {
  @JsonSerializable(converters: Convertors.convertors)
  const factory LanguageModel({
    required String? alpha2,
    required String? name,
    required String? iso6393,
    required String? iso6395,
  }) = _LanguageModel;

  factory LanguageModel.fromJson(Map<String, dynamic> json) =>
      _$LanguageModelFromJson(json);
}
