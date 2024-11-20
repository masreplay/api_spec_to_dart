import 'package:freezed_annotation/freezed_annotation.dart';

part 'body_student_auth_swagger_login.freezed.dart';
part 'body_student_auth_swagger_login.g.dart';

@freezed
class BodyStudentAuthSwaggerLogin with _$BodyStudentAuthSwaggerLogin {
  const factory BodyStudentAuthSwaggerLogin({
    @JsonKey(name: 'username') required String username,
    @JsonKey(name: 'password') required String password,
  }) = _BodyStudentAuthSwaggerLogin;

  factory BodyStudentAuthSwaggerLogin.fromJson(Map<String, dynamic> json) =>
      _$BodyStudentAuthSwaggerLoginFromJson(json);
}
