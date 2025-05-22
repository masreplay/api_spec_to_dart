/// Parrot
/// {
///     "properties": {
///         "name": {
///             "type": "string",
///             "description": "The animal's name",
///             "title": "Name"
///         },
///         "type": {
///             "type": "string",
///             "const": "parrot",
///             "default": "parrot",
///             "title": "Type"
///         },
///         "phrases": {
///             "type": "array",
///             "items": {
///                 "type": "string"
///             },
///             "description": "Phrases the parrot can say",
///             "title": "Phrases"
///         }
///     },
///     "type": "object",
///     "required": [
///         "name",
///         "phrases"
///     ],
///     "title": "Parrot"
/// }
library;

import 'exports.dart';
part 'parrot.freezed.dart';
part 'parrot.g.dart'; // Parrot

@freezed
abstract class Parrot with _$Parrot {
  const Parrot._();

  @jsonSerializable
  const factory Parrot({
    /// name
    @JsonKey(name: Parrot.nameKey) required String name,

    /// typeAA
    @Default('parrot') @JsonKey(name: Parrot.typeAAKey) String typeAA,

    /// phrases
    @JsonKey(name: Parrot.phrasesKey) required List<String> phrases,
  }) = _Parrot;

  factory Parrot.fromJson(Map<String, dynamic> json) => _$ParrotFromJson(json);

  static const String nameKey = "name";

  static const String typeAAKey = "type";

  static const String phrasesKey = "phrases";
}
