import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'body_student_auth_swagger_login.freezed.dart';
part 'body_student_auth_swagger_login.g.dart';

@freezed
class BodyStudentAuthSwaggerLogin with _$BodyStudentAuthSwaggerLogin {
  const BodyStudentAuthSwaggerLogin._();

  @JsonSerializable(converters: convertors)
  const factory BodyStudentAuthSwaggerLogin({
    @JsonKey(name: 'username')

    /// Username
    required String username,
    @JsonKey(name: 'password')

    /// Password
    required String password,
  }) = _BodyStudentAuthSwaggerLogin;

  factory BodyStudentAuthSwaggerLogin.fromJson(Map<String, dynamic> json) =>
      _$BodyStudentAuthSwaggerLoginFromJson(json);
}
