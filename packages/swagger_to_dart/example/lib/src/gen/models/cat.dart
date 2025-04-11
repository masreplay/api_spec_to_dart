import "package:freezed_annotation/freezed_annotation.dart";

import "convertors.dart";
import 'package:example/src/gen/models/models.dart';

part "cat.freezed.dart";
part "cat.g.dart";

/// Cat
@freezed
abstract class Cat with _$Cat {
  const Cat._();

  static const String nameKey = "name";
  static const String typeKey = "type";
  static const String meowCutenessKey = "meow_cuteness";

  @JsonSerializable(converters: convertors)
  const factory Cat({
    /// name, The animal's name
    @JsonKey(name: Cat.nameKey) required String name,

    /// type
    @Default('cat') @JsonKey(name: Cat.typeKey) String type,

    /// meow_cuteness, How cute the cat's meow is (0-10)
    @JsonKey(name: Cat.meowCutenessKey) required int meowCuteness,
  }) = _Cat;

  factory Cat.fromJson(Map<String, dynamic> json) => _$CatFromJson(json);
}
