library;

import 'package:freezed_annotation/freezed_annotation.dart';
part 'cat.freezed.dart';
part 'cat.g.dart'; // Cat

@freezed
abstract class Cat with _$Cat {
  const Cat._();

  const factory Cat({
    /// name
    @JsonKey(name: nameKey) String name,

    /// type
    @Default('cat') @JsonKey(name: typeKey) String type,

    /// meowCuteness
    @JsonKey(name: meowCutenessKey) int meowCuteness,
  }) = _Cat;

  factory Cat.fromJson(Map<String, dynamic> json) => _$CatFromJson(json);

  static const String nameKey = "name";

  static const String typeKey = "type";

  static const String meowCutenessKey = "meowCuteness";
}
