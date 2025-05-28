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
library;

import 'exports.dart';
part 'animal.freezed.dart';
part 'animal.g.dart'; // Animal

@Freezed(fallbackUnion: r"fallback")
sealed class Animal with _$Animal {
  const Animal._();

  @jsonSerializable
  @FreezedUnionValue(r"#/components/schemas/Dog")
  const factory Animal.componentsSchemasDog(Dog value) =
      AnimalComponentsSchemasDog;

  @jsonSerializable
  @FreezedUnionValue(r"#/components/schemas/Cat")
  const factory Animal.componentsSchemasCat(Cat value) =
      AnimalComponentsSchemasCat;

  @jsonSerializable
  @FreezedUnionValue(r"#/components/schemas/Parrot")
  const factory Animal.componentsSchemasParrot(Parrot value) =
      AnimalComponentsSchemasParrot;

  @jsonSerializable
  @FreezedUnionValue(r"fallback")
  const factory Animal.fallback(Map<String, dynamic>? value) = AnimalFallback;

  factory Animal.fromJson(Map<String, dynamic> json) => _$AnimalFromJson(json);
}
