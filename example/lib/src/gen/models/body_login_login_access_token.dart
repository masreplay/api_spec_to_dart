import 'package:freezed_annotation/freezed_annotation.dart';

part 'body_login_login_access_token.freezed.dart';
part 'body_login_login_access_token.g.dart';

/// Body_login-login_access_token
@freezed
sealed class BodyLoginLoginAccessToken with _$BodyLoginLoginAccessToken {
  const factory BodyLoginLoginAccessToken.fallback() =
      BodyLoginLoginAccessTokenFallback;

  factory BodyLoginLoginAccessToken.fromJson(Map<String, dynamic> json) =>
      _$BodyLoginLoginAccessTokenFromJson(json);
}
