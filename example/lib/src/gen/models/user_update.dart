import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'user_update.freezed.dart';
part 'user_update.g.dart';

/// UserUpdate

@freezed
abstract class UserUpdate with _$UserUpdate {
  @JsonSerializable(converters: convertors)
  const factory UserUpdate({
    /// Email
    @JsonKey(name: UserUpdate.emailKey) required String? email,

    /// is_active
    @Default(true) @JsonKey(name: UserUpdate.isActiveKey) bool isActive,

    /// is_superuser
    @Default(false) @JsonKey(name: UserUpdate.isSuperuserKey) bool isSuperuser,

    /// Full Name
    @JsonKey(name: UserUpdate.fullNameKey) required String? fullName,

    /// Password
    @JsonKey(name: UserUpdate.passwordKey) required String? password,
  }) = _UserUpdate;

  factory UserUpdate.fromJson(Map<String, dynamic> json) =>
      _$UserUpdateFromJson(json);
  const UserUpdate._();

  static const String emailKey = 'email';
  static const String isActiveKey = 'is_active';
  static const String isSuperuserKey = 'is_superuser';
  static const String fullNameKey = 'full_name';
  static const String passwordKey = 'password';
}
