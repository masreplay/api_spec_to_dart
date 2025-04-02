import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_create.freezed.dart';
part 'user_create.g.dart';

/// UserCreate
@freezed
sealed class UserCreate with _$UserCreate {
  const factory UserCreate.fallback() = UserCreateFallback;

  factory UserCreate.fromJson(Map<String, dynamic> json) =>
      _$UserCreateFromJson(json);
}
