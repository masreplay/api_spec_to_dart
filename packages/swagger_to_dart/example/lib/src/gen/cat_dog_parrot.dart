library;

import 'exports.dart';
part 'cat_dog_parrot.freezed.dart';
part 'cat_dog_parrot.g.dart'; // CatDogParrot

@freezed
sealed class CatDogParrot with _$CatDogParrot {
  const CatDogParrot._();

  @jsonSerializable
  @FreezedUnionValue("dog")
  const factory CatDogParrot.dog(Dog value) = CatDogParrotDog;

  @jsonSerializable
  @FreezedUnionValue("cat")
  const factory CatDogParrot.cat(Cat value) = CatDogParrotCat;

  @jsonSerializable
  @FreezedUnionValue("parrot")
  const factory CatDogParrot.parrot(Parrot value) = CatDogParrotParrot;

  factory CatDogParrot.fromJson(Map<String, dynamic> json) =>
      _$CatDogParrotFromJson(json);
}

