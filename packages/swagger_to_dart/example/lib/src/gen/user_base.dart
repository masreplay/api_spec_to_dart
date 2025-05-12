library;

import 'exports.dart';
part 'user_base.freezed.dart';
part 'user_base.g.dart'; // UserBase

@freezed
abstract class UserBase with _$UserBase {
  const UserBase._();

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

  static const String fullNameKey = "fullName";
}
