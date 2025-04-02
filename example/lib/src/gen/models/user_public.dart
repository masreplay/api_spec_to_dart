import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_public.freezed.dart';
part 'user_public.g.dart';

/// UserPublic
@freezed
sealed class UserPublic with _$UserPublic {
  const factory UserPublic.fallback() = UserPublicFallback;

  factory UserPublic.fromJson(Map<String, dynamic> json) =>
      _$UserPublicFromJson(json);
}
