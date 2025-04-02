import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_register.freezed.dart';
part 'user_register.g.dart';

/// UserRegister
@freezed
sealed class UserRegister with _$UserRegister {
  const factory UserRegister.fallback() = UserRegisterFallback;

  factory UserRegister.fromJson(Map<String, dynamic> json) =>
      _$UserRegisterFromJson(json);
}
