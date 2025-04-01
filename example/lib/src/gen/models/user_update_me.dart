import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'user_update_me.freezed.dart';
part 'user_update_me.g.dart';

/// UserUpdateMe

@freezed
abstract class UserUpdateMe with _$UserUpdateMe {
  @JsonSerializable(converters: convertors)
  const factory UserUpdateMe({
    /// Full Name
    @JsonKey(name: UserUpdateMe.fullNameKey) required String? fullName,

    /// Email
    @JsonKey(name: UserUpdateMe.emailKey) required String? email,
  }) = _UserUpdateMe;

  factory UserUpdateMe.fromJson(Map<String, dynamic> json) =>
      _$UserUpdateMeFromJson(json);
  const UserUpdateMe._();

  static const String fullNameKey = 'full_name';
  static const String emailKey = 'email';
}
