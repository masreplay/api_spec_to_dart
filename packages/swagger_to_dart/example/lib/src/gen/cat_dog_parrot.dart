/// CreateAnimalResponse
/// {
///     "properties": {
///         "animal": {
///             "anyOf": [
///                 {
///                     "$ref": "#/components/schemas/Dog"
///                 },
///                 {
///                     "$ref": "#/components/schemas/Cat"
///                 },
///                 {
///                     "$ref": "#/components/schemas/Parrot"
///                 }
///             ],
///             "title": "Animal"
///         },
///         "message": {
///             "type": "string",
///             "title": "Message"
///         }
///     },
///     "type": "object",
///     "required": [
///         "animal",
///         "message"
///     ],
///     "title": "CreateAnimalResponse"
/// }
library;

import 'exports.dart';
part 'cat_dog_parrot.freezed.dart';
part 'cat_dog_parrot.g.dart'; // CatDogParrot

@freezed
abstract class CatDogParrot with _$CatDogParrot {
  const CatDogParrot._();

  @generationJsonSerializable
  const factory CatDogParrot.dog({
    /// name
    @JsonKey(name: CreateAnimalResponse.nameKey) required String name,

    /// type
    @Default("dog") @JsonKey(name: CreateAnimalResponse.typeKey) String type,

    /// barkLoudness
    @JsonKey(name: CreateAnimalResponse.barkLoudnessKey)
    required int barkLoudness,
  }) = Dog;

  @generationJsonSerializable
  const factory CatDogParrot.cat({
    /// name
    @JsonKey(name: CreateAnimalResponse.nameKey) required String name,

    /// type
    @Default("cat") @JsonKey(name: CreateAnimalResponse.typeKey) String type,

    /// meowCuteness
    @JsonKey(name: CreateAnimalResponse.meowCutenessKey)
    required int meowCuteness,
  }) = Cat;

  @generationJsonSerializable
  const factory CatDogParrot.parrot({
    /// name
    @JsonKey(name: CreateAnimalResponse.nameKey) required String name,

    /// type
    @Default("parrot") @JsonKey(name: CreateAnimalResponse.typeKey) String type,

    /// phrases
    @JsonKey(name: CreateAnimalResponse.phrasesKey)
    required List<String> phrases,
  }) = Parrot;

  factory CatDogParrot.fromJson(Map<String, dynamic> json) =>
      _$CatDogParrotFromJson(json);

  static const String nameKey = "name";

  static const String typeKey = "type";

  static const String barkLoudnessKey = "barkLoudness";

  static const String nameKey = "name";

  static const String typeKey = "type";

  static const String meowCutenessKey = "meowCuteness";

  static const String nameKey = "name";

  static const String typeKey = "type";

  static const String phrasesKey = "phrases";
}
