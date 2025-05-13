/// UserBase
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
///         }
///     },
///     "type": "object",
///     "required": [
///         "username",
///         "email"
///     ],
///     "title": "UserBase"
/// }
library;

import 'exports.dart';
part 'user_base.freezed.dart';
part 'user_base.g.dart'; // UserBase

@freezed
abstract class UserBase with _$UserBase {
  const UserBase._();

  @generationJsonSerializable
  const factory UserBase({
    /// username
    @JsonKey(name: UserBase.usernameKey) required String username,

    /// email
    @JsonKey(name: UserBase.emailKey) required String email,

    /// fullName
    @JsonKey(name: UserBase.fullNameKey) required String? fullName,
  }) = _UserBase;

  factory UserBase.fromJson(Map<String, dynamic> json) =>
      _$UserBaseFromJson(json);

  static const String usernameKey = "username";

  static const String emailKey = "email";

  static const String fullNameKey = "full_name";
}
