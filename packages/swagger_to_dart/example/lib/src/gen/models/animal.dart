/// Animal
///
/// ```json
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
/// ```
library;

import 'exports.dart';

sealed class Animal {
  const Animal();

  const factory Animal.dog(Dog value) = AnimalDog;
  const factory Animal.cat(Cat value) = AnimalCat;
  const factory Animal.parrot(Parrot value) = AnimalParrot;
  const factory Animal.fallback(Map<String, dynamic> value) = AnimalFallback;

  factory Animal.fromJson(Map<String, dynamic> json) {
    // No discriminator in the spec: the first variant that decodes wins.
    for (final decode in <Animal Function(Map<String, dynamic>)>[
      (json) => AnimalDog(Dog.fromJson(json)),
      (json) => AnimalCat(Cat.fromJson(json)),
      (json) => AnimalParrot(Parrot.fromJson(json)),
    ]) {
      try {
        return decode(json);
      } catch (_) {
        // Not this variant; try the next one.
      }
    }
    return AnimalFallback(json);
  }

  Map<String, dynamic> toJson();
}

final class AnimalDog extends Animal {
  const AnimalDog(this.value);

  final Dog value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  bool operator ==(Object other) => other is AnimalDog && other.value == value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Animal.dog($value)';
}

final class AnimalCat extends Animal {
  const AnimalCat(this.value);

  final Cat value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  bool operator ==(Object other) => other is AnimalCat && other.value == value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Animal.cat($value)';
}

final class AnimalParrot extends Animal {
  const AnimalParrot(this.value);

  final Parrot value;

  @override
  Map<String, dynamic> toJson() => value.toJson();

  @override
  bool operator ==(Object other) =>
      other is AnimalParrot && other.value == value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Animal.parrot($value)';
}

final class AnimalFallback extends Animal {
  const AnimalFallback(this.value);

  final Map<String, dynamic> value;

  @override
  Map<String, dynamic> toJson() => value;

  @override
  String toString() => 'Animal.fallback($value)';
}
