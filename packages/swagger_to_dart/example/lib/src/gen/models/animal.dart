/// Animal
/// {
///     "anyOf": [
///         {
///             "$ref": "#/components/schemas/Dog"
///         },
///         {
///             "$ref": "#/components/schemas/Cat"
///         },
///         {
///             "$ref": "#/components/schemas/Parrot"
///         }
///     ],
///     "title": "Animal",
///     "runtimeType": "anyOf"
/// }
library animal;

import 'exports.dart';
part 'animal.freezed.dart';
part 'animal.g.dart'; // Animal

@Freezed(fallbackUnion: r"fallback")
sealed class Animal with _$Animal {
  const Animal._();

  @jsonSerializable
  @FreezedUnionValue(r"Dog")
  const factory Animal.dog(Dog value) = AnimalDog;

  @jsonSerializable
  @FreezedUnionValue(r"Cat")
  const factory Animal.cat(Cat value) = AnimalCat;

  @jsonSerializable
  @FreezedUnionValue(r"Parrot")
  const factory Animal.parrot(Parrot value) = AnimalParrot;

  @jsonSerializable
  @FreezedUnionValue(r"fallback")
  const factory Animal.fallback(Map<String, dynamic>? value) = AnimalFallback;

  factory Animal.fromJson(Map<String, dynamic> json) => _$AnimalFromJson(json);
}
