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

  @jsonSerializable
  const factory User({
    /// username
    @JsonKey(name: User.usernameKey_) required String username,

    /// email
    @JsonKey(name: User.emailKey_) required String email,

    /// fullName
    @JsonKey(name: User.fullNameKey_) String? fullName,

    /// id
    @JsonKey(name: User.idKey_) required int id,

    /// isActive
    @Default(true) @JsonKey(name: User.isActiveKey_) bool isActive,

    /// createdAt
    @JsonKey(name: User.createdAtKey_) DateTime? createdAt,

    /// location
    @JsonKey(name: User.locationKey_) Location? location,

    /// tags
    @Default(const []) @JsonKey(name: User.tagsKey_) List<String> tags,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  static const String usernameKey_ = r'username';

  static const String emailKey_ = r'email';

  static const String fullNameKey_ = r'full_name';

  static const String idKey_ = r'id';

  static const String isActiveKey_ = r'is_active';

  static const String createdAtKey_ = r'created_at';

  static const String locationKey_ = r'location';

  static const String tagsKey_ = r'tags';
}
