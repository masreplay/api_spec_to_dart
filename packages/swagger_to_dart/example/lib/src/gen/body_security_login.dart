library body_security_login.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'convertors.dart';
part 'body_security_login.freezed.dart';
part 'body_security_login.g.dart'; // BodySecurityLogin

@freezed
abstract class BodySecurityLogin with _$BodySecurityLogin {
  const BodySecurityLogin._();

  const factory BodySecurityLogin() = _BodySecurityLogin;

  factory BodySecurityLogin.fromJson(Map<String, dynamic> json) =>
      _$BodySecurityLoginFromJson(json);
}
