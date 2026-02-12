/// Cat
/// {
///     "properties": {
///         "name": {
///             "type": "string",
///             "description": "The animal's name",
///             "title": "Name"
///         },
///         "type": {
///             "type": "string",
///             "const": "cat",
///             "default": "cat",
///             "title": "Type"
///         },
///         "meow_cuteness": {
///             "type": "integer",
///             "description": "How cute the cat's meow is (0-10)",
///             "title": "Meow Cuteness Level"
///         }
///     },
///     "type": "object",
///     "required": [
///         "name",
///         "meow_cuteness"
///     ],
///     "title": "Cat"
/// }
library cat;

import 'exports.dart';
part 'cat.freezed.dart';
part 'cat.g.dart'; // Cat

@freezed
abstract class Cat with _$Cat {
  const Cat._();

  @jsonSerializable
  const factory Cat({
    /// name
    @JsonKey(name: Cat.nameKey_) required String name,

    /// type
    @Default('cat') @JsonKey(name: Cat.typeKey_) String type,

    /// meowCuteness
    @JsonKey(name: Cat.meowCutenessKey_) required int meowCuteness,
  }) = _Cat;

  factory Cat.fromJson(Map<String, dynamic> json) => _$CatFromJson(json);

  static const String nameKey_ = r'name';

  static const String typeKey_ = r'type';

  static const String meowCutenessKey_ = r'meow_cuteness';
}
