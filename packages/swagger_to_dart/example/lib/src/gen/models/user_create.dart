/// UserCreate
/// {
///     "properties": {
///         "username": {
///             "type": "string",
///             "maxLength": 50,
///             "minLength": 3,
///             "description": "Username between 3-50 characters, alphanumeric with _ and -",
///             "pattern": "^[a-zA-Z0-9_-]+$",
///             "title": "Username"
///         },
///         "email": {
///             "type": "string",
///             "format": "email",
///             "description": "Valid email address",
///             "title": "Email"
///         },
///         "full_name": {
///             "anyOf": [
///                 {
///                     "type": "string"
///                 },
///                 {
///                     "type": "null"
///                 }
///             ],
///             "description": "User's full name",
///             "title": "Full Name"
///         },
///         "password": {
///             "type": "string",
///             "minLength": 8,
///             "format": "password",
///             "description": "Password with minimum 8 characters",
///             "title": "Password"
///         }
///     },
///     "type": "object",
///     "required": [
///         "username",
///         "email",
///         "password"
///     ],
///     "title": "UserCreate"
/// }
library user_create;

import 'exports.dart';
part 'user_create.freezed.dart';
part 'user_create.g.dart'; // UserCreate

@freezed
abstract class UserCreate with _$UserCreate {
  const UserCreate._();

  @jsonSerializable
  const factory UserCreate({
    /// username
    @JsonKey(name: UserCreate.usernameKey_) required String username,

    /// email
    @JsonKey(name: UserCreate.emailKey_) required String email,

    /// fullName
    @JsonKey(name: UserCreate.fullNameKey_) String? fullName,

    /// password
    @JsonKey(name: UserCreate.passwordKey_) required String password,
  }) = _UserCreate;

  factory UserCreate.fromJson(Map<String, dynamic> json) =>
      _$UserCreateFromJson(json);

  static const String usernameKey_ = r'username';

  static const String emailKey_ = r'email';

  static const String fullNameKey_ = r'full_name';

  static const String passwordKey_ = r'password';
}
