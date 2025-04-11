import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'user.freezed.dart';
part 'user.g.dart';

/// User
@freezed
abstract class User with _$User {
  const User._();

  static const String usernameKey = 'username';
  static const String emailKey = 'email';
  static const String fullNameKey = 'full_name';
  static const String idKey = 'id';
  static const String isActiveKey = 'is_active';
  static const String createdAtKey = 'created_at';
  static const String locationKey = 'location';
  static const String tagsKey = 'tags';

  @JsonSerializable(converters: convertors)
  const factory User({
    /// username, Username between 3-50 characters, alphanumeric with _ and -
    @JsonKey(name: User.usernameKey) required String username,

    /// email, Valid email address
    @JsonKey(name: User.emailKey) required String email,

    /// Full Name, User's full name
    @JsonKey(name: User.fullNameKey) required String? fullName,

    /// id, Unique user identifier
    @JsonKey(name: User.idKey) required int id,

    /// is_active, User account status
    @Default(true) @JsonKey(name: User.isActiveKey) bool isActive,

    /// created_at, Account creation timestamp
    @JsonKey(name: User.createdAtKey) required DateTime createdAt,

    /// User's location information
    @JsonKey(name: User.locationKey) required Location? location,

    /// tags, List of tags associated with the user
    @Default([]) @JsonKey(name: User.tagsKey) List<String> tags,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
