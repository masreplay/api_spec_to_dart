import "package:freezed_annotation/freezed_annotation.dart";

import "convertors.dart";
import 'package:example/src/gen/models/models.dart';

part "dog.freezed.dart";
part "dog.g.dart";

/// Dog
@freezed
abstract class Dog with _$Dog {
  const Dog._();

  static const String nameKey = "name";
  static const String typeKey = "type";
  static const String barkLoudnessKey = "bark_loudness";

  @JsonSerializable(converters: convertors)
  const factory Dog({
    /// name, The animal's name
    @JsonKey(name: Dog.nameKey) required String name,

    /// type
    @Default('dog') @JsonKey(name: Dog.typeKey) String type,

    /// bark_loudness, How loud the dog barks (0-10)
    @JsonKey(name: Dog.barkLoudnessKey) required int barkLoudness,
  }) = _Dog;

  factory Dog.fromJson(Map<String, dynamic> json) => _$DogFromJson(json);
}
