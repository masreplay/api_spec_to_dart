/// User
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
///         "id": {
///             "type": "integer",
///             "description": "Unique user identifier",
///             "title": "Id"
///         },
///         "is_active": {
///             "type": "boolean",
///             "description": "User account status",
///             "default": true,
///             "title": "Is Active"
///         },
///         "created_at": {
///             "type": "string",
///             "format": "date-time",
///             "description": "Account creation timestamp",
///             "title": "Created At"
///         },
///         "location": {
///             "anyOf": [
///                 {
///                     "$ref": "#/components/schemas/Location"
///                 },
///                 {
///                     "type": "null"
///                 }
///             ],
///             "description": "User's location information"
///         },
///         "tags": {
///             "type": "array",
///             "items": {
///                 "type": "string"
///             },
///             "description": "list of tags associated with the user",
///             "default": [],
///             "title": "Tags"
///         }
///     },
///     "type": "object",
///     "required": [
///         "username",
///         "email",
///         "id"
///     ],
///     "title": "User"
/// }
library user;

import 'exports.dart';
part 'user.freezed.dart';
part 'user.g.dart'; // User

@freezed
abstract class User with _$User {
  const User._();

  @generationJsonSerializable
  const factory User({
    /// username
    @JsonKey(name: User.usernameKey) required String username,

    /// email
    @JsonKey(name: User.emailKey) required String email,

    /// fullName
    @JsonKey(name: User.fullNameKey) required String? fullName,

    /// id
    @JsonKey(name: User.idKey) required int id,

    /// isActive
    @Default(true) @JsonKey(name: User.isActiveKey) bool isActive,

    /// createdAt
    @JsonKey(name: User.createdAtKey) required DateTime createdAt,

    /// location
    @JsonKey(name: User.locationKey) required Location? location,

    /// tags
    @Default([]) @JsonKey(name: User.tagsKey) List<String> tags,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  static const String usernameKey = "username";

  static const String emailKey = "email";

  static const String fullNameKey = "full_name";

  static const String idKey = "id";

  static const String isActiveKey = "is_active";

  static const String createdAtKey = "created_at";

  static const String locationKey = "location";

  static const String tagsKey = "tags";
}
