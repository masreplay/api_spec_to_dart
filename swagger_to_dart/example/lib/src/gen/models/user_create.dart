import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'user_create.freezed.dart';
part 'user_create.g.dart';

/// UserCreate
@freezed
abstract class UserCreate with _$UserCreate {
  const UserCreate._();

  static const String usernameKey = 'username';
  static const String emailKey = 'email';
  static const String fullNameKey = 'full_name';
  static const String passwordKey = 'password';

  @JsonSerializable(converters: convertors)
  const factory UserCreate({
    /// username, Username between 3-50 characters, alphanumeric with _ and -
    @JsonKey(name: UserCreate.usernameKey) required String username,

    /// email, Valid email address
    @JsonKey(name: UserCreate.emailKey) required String email,

    /// Full Name, User's full name
    @JsonKey(name: UserCreate.fullNameKey) required String? fullName,

    /// password, Password with minimum 8 characters
    @JsonKey(name: UserCreate.passwordKey) required String password,
  }) = _UserCreate;

  factory UserCreate.fromJson(Map<String, dynamic> json) =>
      _$UserCreateFromJson(json);
}
