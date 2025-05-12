library user_create;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'convertors.dart';
part 'user_create.freezed.dart';
part 'user_create.g.dart'; // UserCreate

@freezed
abstract class UserCreate with _$UserCreate {
  const UserCreate._();

  const factory UserCreate(
    /// username
    @JsonKey(name: usernameKey) String username,

    /// email
    @JsonKey(name: emailKey) String email,

    /// fullName
    @JsonKey(name: fullNameKey) String? fullName,

    /// password
    @JsonKey(name: passwordKey) String password,
  ) = _UserCreate;

  factory UserCreate.fromJson(Map<String, dynamic> json) =>
      _$UserCreateFromJson(json);

  static const String usernameKey = "username";

  static const String emailKey = "email";

  static const String fullNameKey = "fullName";

  static const String passwordKey = "password";
}
