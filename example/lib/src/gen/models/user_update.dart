import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_update.freezed.dart';
part 'user_update.g.dart';

/// UserUpdate
@freezed
sealed class UserUpdate with _$UserUpdate {
  const factory UserUpdate.fallback() = UserUpdateFallback;

  factory UserUpdate.fromJson(Map<String, dynamic> json) =>
      _$UserUpdateFromJson(json);
}
