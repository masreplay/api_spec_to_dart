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
    // No discriminator in the spec: the variant whose required keys are all
    // present and that declares the most of the payload's keys wins (the
    // earlier one on a tie).
    const variants = <({Set<String> required, Set<String> declared})>[
      (
        required: {'name', 'bark_loudness'},
        declared: {'name', 'type', 'bark_loudness'},
      ),
      (
        required: {'name', 'meow_cuteness'},
        declared: {'name', 'type', 'meow_cuteness'},
      ),
      (required: {'name', 'phrases'}, declared: {'name', 'type', 'phrases'}),
    ];
    var best = -1;
    var bestScore = -1;
    for (var i = 0; i < variants.length; i++) {
      final variant = variants[i];
      if (!variant.required.every(json.containsKey)) continue;
      final score = json.keys.where(variant.declared.contains).length;
      if (score > bestScore) {
        best = i;
        bestScore = score;
      }
    }
    return switch (best) {
      0 => AnimalDog(Dog.fromJson(json)),
      1 => AnimalCat(Cat.fromJson(json)),
      2 => AnimalParrot(Parrot.fromJson(json)),
      _ => AnimalFallback(json),
    };
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
