import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:example/src/gen/models/models.dart';

part 'models_create_animal_union_animal.freezed.dart';
part 'models_create_animal_union_animal.g.dart';

/// modelsCreateAnimalUnionAnimal

@freezed
abstract class ModelsCreateAnimalUnionAnimal
    with _$ModelsCreateAnimalUnionAnimal {
  const factory ModelsCreateAnimalUnionAnimal.fallback() =
      ModelsCreateAnimalUnionAnimalFallback;

  @FreezedUnionValue("dog")
  const factory ModelsCreateAnimalUnionAnimal.dog(Dog value) =
      ModelsCreateAnimalUnionAnimalDog;

  @FreezedUnionValue("cat")
  const factory ModelsCreateAnimalUnionAnimal.cat(Cat value) =
      ModelsCreateAnimalUnionAnimalCat;

  @FreezedUnionValue("parrot")
  const factory ModelsCreateAnimalUnionAnimal.parrot(Parrot value) =
      ModelsCreateAnimalUnionAnimalParrot;

  factory ModelsCreateAnimalUnionAnimal.fromJson(Map<String, dynamic> json) =>
      _$ModelsCreateAnimalUnionAnimalFromJson(json);
}
