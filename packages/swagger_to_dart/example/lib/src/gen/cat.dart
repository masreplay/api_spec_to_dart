library cat.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'convertors.dart';
part 'cat.freezed.dart';
part 'cat.g.dart'; // Cat

@freezed
abstract class Cat with _$Cat {
  const Cat._();

  const factory Cat() = _Cat;

  factory Cat.fromJson(Map<String, dynamic> json) => _$CatFromJson(json);
}
