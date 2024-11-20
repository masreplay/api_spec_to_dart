import 'package:freezed_annotation/freezed_annotation.dart';

part 'body_student_auth_login.freezed.dart';
part 'body_student_auth_login.g.dart';

@freezed
class BodyStudentAuthLogin with _$BodyStudentAuthLogin {
  const factory BodyStudentAuthLogin({
    @JsonKey(name: 'username') required String username,
    @JsonKey(name: 'password') required String password,
  }) = _BodyStudentAuthLogin;

  factory BodyStudentAuthLogin.fromJson(Map<String, dynamic> json) =>
      _$BodyStudentAuthLoginFromJson(json);
}
