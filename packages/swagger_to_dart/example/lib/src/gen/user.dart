library;

import 'exports.dart';
part 'user.freezed.dart';
part 'user.g.dart'; // User

@freezed
abstract class User with _$User {
  const User._();

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

  static const String fullNameKey = "fullName";

  static const String idKey = "id";

  static const String isActiveKey = "isActive";

  static const String createdAtKey = "createdAt";

  static const String locationKey = "location";

  static const String tagsKey = "tags";
}
