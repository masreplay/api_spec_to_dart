import 'package:freezed_annotation/freezed_annotation.dart';

part 'body_lecturer_auth_swagger_login.freezed.dart';
part 'body_lecturer_auth_swagger_login.g.dart';

@freezed
class BodyLecturerAuthSwaggerLogin with _$BodyLecturerAuthSwaggerLogin {
  const factory BodyLecturerAuthSwaggerLogin({
    @JsonKey(name: 'username') required String username,
    @JsonKey(name: 'password') required String password,
  }) = _BodyLecturerAuthSwaggerLogin;

  factory BodyLecturerAuthSwaggerLogin.fromJson(Map<String, dynamic> json) =>
      _$BodyLecturerAuthSwaggerLoginFromJson(json);
}
