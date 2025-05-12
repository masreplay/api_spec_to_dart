library;

import 'package:freezed_annotation/freezed_annotation.dart';

import 'models.dart';

part 'user.freezed.dart';
part 'user.g.dart'; // User

@freezed
abstract class User with _$User {
  const User._();

  const factory User({
    /// username
    @JsonKey(name: usernameKey) String username,

    /// email
    @JsonKey(name: emailKey) String email,

    /// fullName
    @JsonKey(name: fullNameKey) String? fullName,

    /// id
    @JsonKey(name: idKey) int id,

    /// isActive
    @Default(true) @JsonKey(name: isActiveKey) bool isActive,

    /// createdAt
    @JsonKey(name: createdAtKey) DateTime createdAt,

    /// location
    @JsonKey(name: locationKey) Location? location,

    /// tags
    @Default([]) @JsonKey(name: tagsKey) List<String> tags,
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
