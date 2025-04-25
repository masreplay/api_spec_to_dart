import 'package:freezed_annotation/freezed_annotation.dart';
import 'convertors.dart';
import 'package:example/src/gen/models/models.dart';
part 'body_security_login.freezed.dart';
part 'body_security_login.g.dart';

/// Body_security-login
@freezed
abstract class BodySecurityLogin with _$BodySecurityLogin {
  @JsonSerializable(converters: Convertors.convertors)
  const factory BodySecurityLogin({
    required String? grantType,
    required String username,
    required String password,
    required String scope,
    required String? clientId,
    required String? clientSecret,
  }) = _BodySecurityLogin;

  factory BodySecurityLogin.fromJson(Map<String, dynamic> json) =>
      _$BodySecurityLoginFromJson(json);
}
