import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_update_me.freezed.dart';
part 'user_update_me.g.dart';

/// UserUpdateMe
@freezed
sealed class UserUpdateMe with _$UserUpdateMe {
  const factory UserUpdateMe.fallback() = UserUpdateMeFallback;

  factory UserUpdateMe.fromJson(Map<String, dynamic> json) =>
      _$UserUpdateMeFromJson(json);
}
