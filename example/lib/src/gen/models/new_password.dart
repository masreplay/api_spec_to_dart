import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'new_password.freezed.dart';
part 'new_password.g.dart';

/// NewPassword
@freezed
abstract class NewPassword with _$NewPassword {
  @JsonSerializable(converters: convertors)
  const factory NewPassword({
    /// token
    @JsonKey(name: NewPassword.tokenKey) required String token,

    /// new_password
    @JsonKey(name: NewPassword.newPasswordKey) required String newPassword,
  }) = _NewPassword;

  factory NewPassword.fromJson(Map<String, dynamic> json) =>
      _$NewPasswordFromJson(json);
  const NewPassword._();

  static const String tokenKey = 'token';
  static const String newPasswordKey = 'new_password';
}
