import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'body_student_auth_login.freezed.dart';
part 'body_student_auth_login.g.dart';

@freezed
class BodyStudentAuthLogin with _$BodyStudentAuthLogin {
  const BodyStudentAuthLogin._();

  @JsonSerializable(converters: convertors)
  const factory BodyStudentAuthLogin({
    @JsonKey(name: 'username')

    /// Username
    required String username,
    @JsonKey(name: 'password')

    /// Password
    required String password,
  }) = _BodyStudentAuthLogin;

  factory BodyStudentAuthLogin.fromJson(Map<String, dynamic> json) =>
      _$BodyStudentAuthLoginFromJson(json);
}
