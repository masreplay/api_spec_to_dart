library;

import 'package:freezed_annotation/freezed_annotation.dart';
part 'dog.freezed.dart';
part 'dog.g.dart'; // Dog

@freezed
abstract class Dog with _$Dog {
  const Dog._();

  const factory Dog({
    /// name
    @JsonKey(name: nameKey) String name,

    /// type
    @Default('dog') @JsonKey(name: typeKey) String type,

    /// barkLoudness
    @JsonKey(name: barkLoudnessKey) int barkLoudness,
  }) = _Dog;

  factory Dog.fromJson(Map<String, dynamic> json) => _$DogFromJson(json);

  static const String nameKey = "name";

  static const String typeKey = "type";

  static const String barkLoudnessKey = "barkLoudness";
}
