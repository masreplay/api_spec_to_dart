import 'package:freezed_annotation/freezed_annotation.dart';
import 'convertors.dart';
import 'package:example/src/gen/models/models.dart';
part 'dog.freezed.dart';
part 'dog.g.dart';

/// Dog
@freezed
abstract class Dog with _$Dog {
  @JsonSerializable(converters: Convertors.convertors)
  const factory Dog({
    required String name,
    required String type,
    required int barkLoudness,
  }) = _Dog;

  factory Dog.fromJson(Map<String, dynamic> json) => _$DogFromJson(json);
}
