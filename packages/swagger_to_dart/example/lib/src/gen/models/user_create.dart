import 'package:freezed_annotation/freezed_annotation.dart';
import 'convertors.dart';
import 'package:example/src/gen/models/models.dart';
part 'user_create.freezed.dart';
part 'user_create.g.dart';

/// UserCreate
@freezed
abstract class UserCreate with _$UserCreate {
  @JsonSerializable(converters: Convertors.convertors)
  const factory UserCreate({
    required String username,
    required String email,
    required String? fullName,
    required String password,
  }) = _UserCreate;

  factory UserCreate.fromJson(Map<String, dynamic> json) =>
      _$UserCreateFromJson(json);
}
