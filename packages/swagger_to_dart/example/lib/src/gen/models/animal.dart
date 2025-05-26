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

@freezed
sealed class Animal with _$Animal {
  const Animal._();

  @jsonSerializable
  @FreezedUnionValue("#/components/schemas/Dog")
  const factory Animal.componentsSchemasDog(Dog value) =
      AnimalComponentsSchemasDog;

  @jsonSerializable
  @FreezedUnionValue("#/components/schemas/Cat")
  const factory Animal.componentsSchemasCat(Cat value) =
      AnimalComponentsSchemasCat;

  @jsonSerializable
  @FreezedUnionValue("#/components/schemas/Parrot")
  const factory Animal.componentsSchemasParrot(Parrot value) =
      AnimalComponentsSchemasParrot;

  factory Animal.fromJson(Map<String, dynamic> json) => _$AnimalFromJson(json);
}
