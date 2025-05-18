library cat_dog_parrot;

import 'exports.dart';

part 'cat_dog_parrot.freezed.dart';
part 'cat_dog_parrot.g.dart'; // CatDogParrot

@freezed
sealed class CatDogParrot with _$CatDogParrot {
  const CatDogParrot._();

  @generationJsonSerializable
  const factory CatDogParrot.dog({
    /// name
    @JsonKey(name: CatDogParrot.nameKey) required String name,

    /// type
    @Default("dog") @JsonKey(name: CatDogParrot.typeKey) String type,

    /// barkLoudness
    @JsonKey(name: CatDogParrot.barkLoudnessKey) required int barkLoudness,
  }) = Dog;

  @generationJsonSerializable
  const factory CatDogParrot.cat({
    /// name
    @JsonKey(name: CatDogParrot.nameKey) required String name,

    /// type
    @Default("cat") @JsonKey(name: CatDogParrot.typeKey) String type,

    /// meowCuteness
    @JsonKey(name: CatDogParrot.meowCutenessKey) required int meowCuteness,
  }) = Cat;

  @generationJsonSerializable
  const factory CatDogParrot.parrot({
    /// name
    @JsonKey(name: CatDogParrot.nameKey) required String name,

    /// type
    @Default("parrot") @JsonKey(name: CatDogParrot.typeKey) String type,

    /// phrases
    @JsonKey(name: CatDogParrot.phrasesKey) required List<String> phrases,
  }) = Parrot;

  factory CatDogParrot.fromJson(Map<String, dynamic> json) =>
      _$CatDogParrotFromJson(json);

  static const String nameKey = "name";

  static const String typeKey = "type";

  static const String barkLoudnessKey = "barkLoudness";

  static const String meowCutenessKey = "meowCuteness";

  static const String phrasesKey = "phrases";
}
