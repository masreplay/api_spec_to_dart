import 'package:freezed_annotation/freezed_annotation.dart';

part 'body_lecturer_auth_login.freezed.dart';
part 'body_lecturer_auth_login.g.dart';

@freezed
class BodyLecturerAuthLogin with _$BodyLecturerAuthLogin {
  const factory BodyLecturerAuthLogin({
    @JsonKey(name: 'username') required String username,
    @JsonKey(name: 'password') required String password,
  }) = _BodyLecturerAuthLogin;

  factory BodyLecturerAuthLogin.fromJson(Map<String, dynamic> json) =>
      _$BodyLecturerAuthLoginFromJson(json);
}
