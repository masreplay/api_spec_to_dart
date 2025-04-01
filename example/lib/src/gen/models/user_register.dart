import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'user_register.freezed.dart';
part 'user_register.g.dart';

/// UserRegister

@freezed
abstract class UserRegister with _$UserRegister {
  @JsonSerializable(converters: convertors)
  const factory UserRegister({
    /// email
    @JsonKey(name: UserRegister.emailKey) required String email,

    /// password
    @JsonKey(name: UserRegister.passwordKey) required String password,

    /// Full Name
    @JsonKey(name: UserRegister.fullNameKey) required String? fullName,
  }) = _UserRegister;

  factory UserRegister.fromJson(Map<String, dynamic> json) =>
      _$UserRegisterFromJson(json);
  const UserRegister._();

  static const String emailKey = 'email';
  static const String passwordKey = 'password';
  static const String fullNameKey = 'full_name';
}
