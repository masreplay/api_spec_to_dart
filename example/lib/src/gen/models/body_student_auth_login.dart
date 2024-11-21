import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'body_student_auth_login.freezed.dart';
part 'body_student_auth_login.g.dart';

///Body_student_auth-login

@freezed
class BodyStudentAuthLogin with _$BodyStudentAuthLogin {
  const BodyStudentAuthLogin._();

  @JsonSerializable(converters: convertors)
  const factory BodyStudentAuthLogin({
    /// Username
    @JsonKey(name: 'username') required String username,

    /// Password
    @JsonKey(name: 'password') required String password,
  }) = _BodyStudentAuthLogin;

  factory BodyStudentAuthLogin.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$BodyStudentAuthLoginFromJson(json);
}
