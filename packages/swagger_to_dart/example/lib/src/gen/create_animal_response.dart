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
part 'create_animal_response.freezed.dart';
part 'create_animal_response.g.dart';

// CreateAnimalResponse

@freezed
abstract class CreateAnimalResponse with _$CreateAnimalResponse {
  const CreateAnimalResponse._();

  @generationJsonSerializable
  const factory CreateAnimalResponse({
    /// animal
    @JsonKey(name: CreateAnimalResponse.animalKey)
    required DogOrCatOrParrot animal,

    /// message
    @JsonKey(name: CreateAnimalResponse.messageKey) required String message,
  }) = _CreateAnimalResponse;

  factory CreateAnimalResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateAnimalResponseFromJson(json);

  static const String animalKey = "animal";

  static const String messageKey = "message";
}
