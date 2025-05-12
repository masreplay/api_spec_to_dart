library;

import 'exports.dart';
part 'user_create.freezed.dart';
part 'user_create.g.dart'; // UserCreate

@freezed
abstract class UserCreate with _$UserCreate {
  const UserCreate._();

  const factory UserCreate({
    /// username
    @JsonKey(name: UserCreate.usernameKey) required String username,

    /// email
    @JsonKey(name: UserCreate.emailKey) required String email,

    /// fullName
    @JsonKey(name: UserCreate.fullNameKey) required String? fullName,

    /// password
    @JsonKey(name: UserCreate.passwordKey) required String password,
  }) = _UserCreate;

  factory UserCreate.fromJson(Map<String, dynamic> json) =>
      _$UserCreateFromJson(json);

  static const String usernameKey = "username";

  static const String emailKey = "email";

  static const String fullNameKey = "fullName";

  static const String passwordKey = "password";
}
