// Parrot
// {
//     "properties": {
//         "name": {
//             "type": "string",
//             "description": "The animal's name",
//             "title": "Name"
//         },
//         "type": {
//             "type": "string",
//             "const": "parrot",
//             "default": "parrot",
//             "title": "Type"
//         },
//         "phrases": {
//             "type": "array",
//             "items": {
//                 "type": "string"
//             },
//             "description": "Phrases the parrot can say",
//             "title": "Phrases"
//         }
//     },
//     "type": "object",
//     "required": [
//         "name",
//         "phrases"
//     ],
//     "title": "Parrot"
// }

library;

import 'exports.dart';
part 'parrot.freezed.dart';
part 'parrot.g.dart'; // Parrot

@freezed
abstract class Parrot with _$Parrot {
  const Parrot._();

  const factory Parrot({
    /// name
    @JsonKey(name: Parrot.nameKey) required String name,

    /// type
    @Default('parrot') @JsonKey(name: Parrot.typeKey) String type,

    /// phrases
    @JsonKey(name: Parrot.phrasesKey) required List<String> phrases,
  }) = _Parrot;

  factory Parrot.fromJson(Map<String, dynamic> json) => _$ParrotFromJson(json);

  static const String nameKey = "name";

  static const String typeKey = "type";

  static const String phrasesKey = "phrases";
}
