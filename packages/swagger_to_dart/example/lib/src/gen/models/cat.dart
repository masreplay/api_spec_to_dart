import 'package:freezed_annotation/freezed_annotation.dart';
import 'convertors.dart';
import 'package:example/src/gen/models/models.dart';
part 'cat.freezed.dart';
part 'cat.g.dart';

/// Cat
@freezed
abstract class Cat with _$Cat {
  @JsonSerializable(converters: Convertors.convertors)
  const factory Cat({
    required String name,
    required String type,
    required int meowCuteness,
  }) = _Cat;

  factory Cat.fromJson(Map<String, dynamic> json) => _$CatFromJson(json);
}
