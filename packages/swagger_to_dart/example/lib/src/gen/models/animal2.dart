/// Animal2
///
/// ```json
/// {
///     "oneOf": [
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
///     "discriminator": {
///         "propertyName": "type",
///         "mapping": {
///             "dog": "#/components/schemas/Dog",
///             "cat": "#/components/schemas/Cat",
///             "parrot": "#/components/schemas/Parrot"
///         }
///     },
///     "runtimeType": "oneOf"
/// }
/// ```
library;

import 'exports.dart';

sealed class Animal2 {
  const Animal2();

  const factory Animal2.dog(Dog value) = Animal2Dog;
  const factory Animal2.cat(Cat value) = Animal2Cat;
  const factory Animal2.parrot(Parrot value) = Animal2Parrot;
  const factory Animal2.fallback(Map<String, dynamic> value) = Animal2Fallback;

  factory Animal2.fromJson(Map<String, dynamic> json) => switch (json['type']) {
    'dog' => Animal2Dog(Dog.fromJson(json)),
    'cat' => Animal2Cat(Cat.fromJson(json)),
    'parrot' => Animal2Parrot(Parrot.fromJson(json)),
    _ => Animal2Fallback(json),
  };

  Map<String, dynamic> toJson();
}

final class Animal2Dog extends Animal2 {
  const Animal2Dog(this.value);

  final Dog value;

  @override
  Map<String, dynamic> toJson() => {...value.toJson(), 'type': 'dog'};

  @override
  bool operator ==(Object other) => other is Animal2Dog && other.value == value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Animal2.dog($value)';
}

final class Animal2Cat extends Animal2 {
  const Animal2Cat(this.value);

  final Cat value;

  @override
  Map<String, dynamic> toJson() => {...value.toJson(), 'type': 'cat'};

  @override
  bool operator ==(Object other) => other is Animal2Cat && other.value == value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Animal2.cat($value)';
}

final class Animal2Parrot extends Animal2 {
  const Animal2Parrot(this.value);

  final Parrot value;

  @override
  Map<String, dynamic> toJson() => {...value.toJson(), 'type': 'parrot'};

  @override
  bool operator ==(Object other) =>
      other is Animal2Parrot && other.value == value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Animal2.parrot($value)';
}

final class Animal2Fallback extends Animal2 {
  const Animal2Fallback(this.value);

  final Map<String, dynamic> value;

  @override
  Map<String, dynamic> toJson() => value;

  @override
  String toString() => 'Animal2.fallback($value)';
}
